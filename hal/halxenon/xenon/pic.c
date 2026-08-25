/*
 * PROJECT:     ReactOS Kernel
 * LICENSE:     GPL-2.0-or-later (https://spdx.org/licenses/GPL-2.0-or-later)
 * PURPOSE:     Experimental build for Xbox 360 (xenon)
 * COPYRIGHT:   Copyright 2026 Janno Brits <kolle.hond@gmail.com>
 *              
 */

#include <hal.h>

// Disable an interrupt vector
VOID
NTAPI
HalDisableSystemInterrupt(
    _In_ ULONG Vector,
    _In_ KIRQL Irql)
{
    // Mask specific interrupt bit in Xenon SMC registers
    volatile ULONG* SMC_IMASK = (volatile ULONG*)0xEA001004;
    *SMC_IMASK &= ~(1 << Vector);
}

// Enable an interrupt vector
BOOLEAN
NTAPI
HalEnableSystemInterrupt(
    _In_ ULONG Vector,
    _In_ KIRQL Irql,
    _In_ KINTERRUPT_MODE InterruptMode)
{
    // Unmask specific interrupt bit in Xenon SMC registers
    volatile ULONG* SMC_IMASK = (volatile ULONG*)0xEA001004;
    *SMC_IMASK |= (1 << Vector);
    return TRUE;
}

// Inter-Processor Interrupt (IPI) trigger for multi-core dispatch
VOID
HalpSendIpi(ULONG TargetProcessor, ULONG Vector)
{
    // Trigger Xenon CPU hardware register for cross-core signaling
    volatile ULONG* IPI_REG = (volatile ULONG*)(0x20000050 + (TargetProcessor * 0x1000));
    *IPI_REG = Vector;
}
