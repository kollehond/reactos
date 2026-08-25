/*
 * PROJECT:     ReactOS Kernel
 * LICENSE:     GPL-2.0-or-later (https://spdx.org/licenses/GPL-2.0-or-later)
 * PURPOSE:     Experimental build for Xbox 360 (xenon)
 * COPYRIGHT:   Copyright 2026 Janno Brits <kolle.hond@gmail.com>
 *              
 */

#include <freeldr.h>
#include <xenon_smc/xenon_smc.h>
#include <xenon_video/video.h>

// Video configuration structure
typedef struct _XENON_VIDEO_BOOT_INFO {
    ULONG FramebufferBase; // Physical/Virtual address of VRAM
    ULONG Width;           // e.g. 1280
    ULONG Height;          // e.g. 720
    ULONG Pitch;           // Bytes per line (Width * 4)
    ULONG Bpp;             // 32-bit
} XENON_VIDEO_BOOT_INFO, *PXENON_VIDEO_BOOT_INFO;

static XENON_VIDEO_BOOT_INFO g_VideoInfo;

VOID XenonInitVideo(VOID)
{
    // Retrieve structure pointers from LibXenon's GPU setup
    struct video_mode *mode = video_get_mode();

    g_VideoInfo.FramebufferBase = (ULONG)video_get_fb_addr();
    g_VideoInfo.Width = mode->width;
    g_VideoInfo.Height = mode->height;
    g_VideoInfo.Pitch = mode->width * 4;
    g_VideoInfo.Bpp = 32;
}