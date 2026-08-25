/*
 * PROJECT:     ReactOS Kernel
 * LICENSE:     GPL-2.0-or-later (https://spdx.org/licenses/GPL-2.0-or-later)
 * PURPOSE:     Experimental build for Xbox 360 (xenon)
 * COPYRIGHT:   Copyright 2026 Janno Brits <kolle.hond@gmail.com>
 *              
 */
# hal/halxenon/CMakeLists.txt

list(APPEND SOURCE
    generic/halinit.c
    generic/processor.c
    xenon/pic.c
    xenon/timer.c
    xenon/rtc.c
)

add_library(halxenon ${SOURCE})
add_dependencies(halxenon bugcodes psdk)
set_target_properties(halxenon PROPERTIES LINKER_LANGUAGE C)