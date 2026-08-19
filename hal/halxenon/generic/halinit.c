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