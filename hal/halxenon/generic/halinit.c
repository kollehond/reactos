/*
 * PROJECT:     ReactOS Kernel
 * LICENSE:     GPL-2.0-or-later (https://spdx.org/licenses/GPL-2.0-or-later)
 * PURPOSE:     Experimental build for Xbox 360 (xenon)
 * COPYRIGHT:   Copyright 2026 Janno Brits <kolle.hond@gmail.com>
 *              
 */

#include <hal.h>

BOOLEAN
NTAPI
HalInitSystem(
    _In_ ULONG BootPhase,
    _In_ PLOADER_PARAMETER_BLOCK LoaderBlock)
{
    if (BootPhase == 0)
    {
        // Phase 0: Basic bus, CPU, and early debug console setup
        HalpInitializeClock();
    }
    else if (BootPhase == 1)
    {
        // Phase 1: Enable full hardware interrupts and secondary cores
    }

    return TRUE;
}