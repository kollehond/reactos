#include <hal.h>
#include <ppc/timebase.h>

/*
 * 1. CPU Clock & Spin Wait Initialization
 * Bus speeds on Xenon: 50 MHz Timebase clock rate.
 */
VOID
NTAPI
HalpCalibrateStallExecution(VOID)
{
    // PowerPC execution loops are determined by the 50MHz internal timebase.
    // No dynamic x86 calibration loops needed.
}

/*
 * 2. High-Precision Delay Execution
 * Used by drivers needing microsecond-accurate pauses.
 */
VOID
NTAPI
KeStallExecutionProcessor(
    _In_ ULONG Microseconds)
{
    // Convert microseconds to 50MHz Timebase ticks (50 ticks = 1 microsecond)
    ULONGLONG TargetTicks = __mfspr(268) + ((ULONGLONG)Microseconds * 50); // SPR 268 = TB
    
    // Spin until lower timebase register reaches target
    while (__mfspr(268) < TargetTicks)
    {
        // Yield pipeline hint to other CPU threads (SMT)
        __asm__ volatile("or 27,27,27"); // PowerPC 'yield' / low-priority hint
    }
}

/*
 * 3. Processor Power & Idle State Management
 */
VOID
NTAPI
HalProcessorIdle(VOID)
{
    // Enable MSR[POW] or invoke PowerPC low-power sleep state
    ULONG Msr = __mfmsr();
    
    // Re-enable interrupts while idling
    Msr |= MSR_EE;
    
    // Put CPU thread to sleep until next interrupt (DEC or IPI)
    __mtmsr(Msr);
    __asm__ volatile("or 27,27,27"); // Yield thread resource on Xbox 360 SMT
}

/*
 * 4. Multi-Core Processor Initialization Phase
 */
BOOLEAN
NTAPI
HalStartNextProcessor(
    _In_ PLOADER_PARAMETER_BLOCK LoaderBlock,
    _In_ PKPROCESSOR_STATE ProcessorState)
{
    /*
     * The Xbox 360 Xenon has 3 physical cores with 2 threads each (6 logical CPUs).
     * XeLL typically starts core 0; secondary cores are held in reset.
     * Triggering core bring-up requires writing to the Xenon register block.
     */
     
    ULONG TargetCpu = LoaderBlock->P0State.ContextFrame.Gpr3; // Target CPU ID
    
    if (TargetCpu >= 6) return FALSE;

    // Wake secondary threads via SMC / hardware boot vector registers
    volatile ULONG* XenonSecondaryCoreWake = (volatile ULONG*)0x20000010;
    *XenonSecondaryCoreWake = (1 << TargetCpu);

    return TRUE;
}

/*
 * 5. Interrupt Request Level (IRQL) Management
 * PowerPC uses Machine State Register (MSR) External Interrupt bit (EE) 
 * alongside an IRQL mask variable for priority level simulation.
 */
KIRQL
NTAPI
KeGetCurrentIrql(VOID)
{
    // Retrieve processor-specific IRQL state stored in PCR (Processor Control Region)
    return PKPORT_GET_PCR()->Irql;
}

KIRQL
NTAPI
KfRaiseIrql(
    _In_ KIRQL NewIrql)
{
    PKPCR Pcr = PKPORT_GET_PCR();
    KIRQL OldIrql = Pcr->Irql;

    Pcr->Irql = NewIrql;

    // Disable interrupts on hardware level if raising to HIGH_LEVEL
    if (NewIrql >= HIGH_LEVEL)
    {
        __mtmsr(__mfmsr() & ~MSR_EE);
    }

    return OldIrql;
}

VOID
NTAPI
KfLowerIrql(
    _In_ KIRQL NewIrql)
{
    PKPCR Pcr = PKPORT_GET_PCR();
    Pcr->Irql = NewIrql;

    // Re-enable interrupts if stepping down below HIGH_LEVEL
    if (NewIrql < HIGH_LEVEL)
    {
        __mtmsr(__mfmsr() | MSR_EE);
    }
}
