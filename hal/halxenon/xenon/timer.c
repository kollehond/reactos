/*
 * PROJECT:     ReactOS Kernel
 * LICENSE:     GPL-2.0-or-later (https://spdx.org/licenses/GPL-2.0-or-later)
 * PURPOSE:     Experimental build for Xbox 360 (xenon)
 * COPYRIGHT:   Copyright 2026 Janno Brits <kolle.hond@gmail.com>
 *              
 */

#include <hal.h>
#include <ppc/timebase.h>

#define XENON_TB_FREQ 50000000ULL // 50 MHz clock speed

// Initialize the system clock interrupt (e.g., 100 Hz / 10ms tick for Windows kernel)
VOID
HalpInitializeClock(VOID)
{
    ULONG TicksPerInterval = XENON_TB_FREQ / 100;

    // Load Decrementer register with the tick interval
    __mtspr(22, TicksPerInterval); // SPR 22 = DEC
    
    // Enable Decrementer interrupts in MSR
    __mtmsr(__mfmsr() | MSR_EE);
}

// Clock Interrupt Handler called by PPC trap vector 0x0900
VOID
HalpClockInterruptHandler(PKTRAP_FRAME TrapFrame)
{
    // Reload Decrementer for next interval
    ULONG TicksPerInterval = XENON_TB_FREQ / 100;
    __mtspr(22, TicksPerInterval);

    // Notify NT kernel of time tick
    KeUpdateSystemTime(TrapFrame, CLOCK2_LEVEL);
}