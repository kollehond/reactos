/*
 * PROJECT:     ReactOS Kernel
 * LICENSE:     GPL-2.0-or-later (https://spdx.org/licenses/GPL-2.0-or-later)
 * PURPOSE:     Experimental build for Xbox 360 (xenon)
 * COPYRIGHT:   Copyright 2026 Janno Brits <kolle.hond@gmail.com>
 *              
 */

#include <hal.h>

// Xbox 360 SMC Memory-Mapped Registers (I2C Bus Base)
#define SMC_BASE_ADDR   0xEA001000
#define SMC_CMD_REG     ((volatile ULONG*)(SMC_BASE_ADDR + 0x00))
#define SMC_DATA_REG    ((volatile ULONG*)(SMC_BASE_ADDR + 0x04))

// SMC Command Opcodes for RTC
#define SMC_CMD_GET_RTC 0x04
#define SMC_CMD_SET_RTC 0x05

/*
 * Low-level helper to send commands to the Xbox 360 SMC
 */
static VOID
XenonSmcSendCommand(UCHAR Command, UCHAR* Buffer)
{
    // Write command bytes to SMC FIFO buffer
    *SMC_CMD_REG = (Command << 24);

    // Wait for SMC I2C bus ready signal
    while ((*SMC_CMD_REG & 0x80000000) == 0)
    {
        // Yield execution wait
        __asm__ volatile("or 27,27,27");
    }

    // Read back response payload
    if (Buffer != NULL)
    {
        ULONG Response = *SMC_DATA_REG;
        Buffer[0] = (Response >> 24) & 0xFF;
        Buffer[1] = (Response >> 16) & 0xFF;
        Buffer[2] = (Response >> 8)  & 0xFF;
        Buffer[3] = Response & 0xFF;
    }
}

/*
 * Reads the current time from the hardware RTC (SMC)
 */
BOOLEAN
NTAPI
HalQueryRealTimeClock(
    _Out_ PTIME_FIELDS TimeFields)
{
    UCHAR RtcBuffer[4];
    ULONG SecondsSince2000;

    // Send query to SMC chip
    XenonSmcSendCommand(SMC_CMD_GET_RTC, RtcBuffer);

    // Reconstruct 32-bit second count (Xbox 360 RTC counts seconds from Jan 1, 2000)
    SecondsSince2000 = (RtcBuffer[0] << 24) |
                       (RtcBuffer[1] << 16) |
                       (RtcBuffer[2] << 8)  |
                        RtcBuffer[3];

    // Convert seconds from epoch into standard Windows TIME_FIELDS
    // (Year, Month, Day, Hour, Minute, Second)
    RtlSecondsSince1970ToTime(
        SecondsSince2000 + 946684800, // Offset to Unix epoch (1970 to 2000)
        (PLARGE_INTEGER)TimeFields
    );

    return TRUE;
}

/*
 * Writes updated time back to hardware RTC (SMC)
 */
BOOLEAN
NTAPI
HalSetRealTimeClock(
    _In_ PTIME_FIELDS TimeFields)
{
    LARGE_INTEGER SystemTime;
    ULONG SecondsSince2000;
    UCHAR RtcBuffer[4];

    // Convert Windows TIME_FIELDS into total seconds
    RtlTimeFieldsToTime(TimeFields, &SystemTime);

    // Convert to Xbox 360 epoch (Jan 1, 2000)
    SecondsSince2000 = (ULONG)(SystemTime.QuadPart / 10000000ULL) - 11644473600ULL - 946684800;

    // Package payload bytes
    RtcBuffer[0] = (SecondsSince2000 >> 24) & 0xFF;
    RtcBuffer[1] = (SecondsSince2000 >> 16) & 0xFF;
    RtcBuffer[2] = (SecondsSince2000 >> 8)  & 0xFF;
    RtcBuffer[3] = SecondsSince2000 & 0xFF;

    // Write back to SMC chip
    XenonSmcSendCommand(SMC_CMD_SET_RTC, RtcBuffer);

    return TRUE;
}