/*
 * Xbox 360 (LibXenon) machine support for FreeLDR
 */
#include <freeldr.h>
#include <xenon_smc/xenon_smc.h>
#include <xenon_uart/xenon_uart.h>
#include <ppc/timebase.h>

// 1. Debug Console Output (Routes ReactOS debug prints to Xbox 360 serial/SMC)
VOID XenonConsPutChar(UCHAR Ch)
{
    xenon_uart_putc(0, Ch);
}

// 2. Memory Map Initialization
PBIOS_MEMORY_MAP XenonGetMemoryMap(ULONG *Count)
{
    // XeLL leaves ~512MB RAM accessible (or 256MB on older retail boards)
    // Map physical memory available to the NT kernel allocator
    static BIOS_MEMORY_MAP Map[2];
    
    Map[0].BaseAddress = 0x00000000;
    Map[0].Length = 0x1F000000; // ~496 MB usable
    Map[0].Type = LoaderFree;

    *Count = 1;
    return Map;
}

// 3. Hardware Initialization
VOID XenonInit(VOID)
{
    // Initialize LibXenon low-level buses
    xenon_make_it_faster(); // Set CPU clock speed
    xenon_uart_init();      // Initialize serial debug output
    
    // Register function pointers with FreeLDR mach structure
    MachVtbl.ConsPutChar = XenonConsPutChar;
    MachVtbl.GetMemoryMap = XenonGetMemoryMap;
}
