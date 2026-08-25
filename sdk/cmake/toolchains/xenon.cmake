/*
 * PROJECT:     ReactOS Kernel
 * LICENSE:     GPL-2.0-or-later (https://spdx.org/licenses/GPL-2.0-or-later)
 * PURPOSE:     Experimental build for Xbox 360 (xenon)
 * COPYRIGHT:   Copyright 2026 Janno Brits <kolle.hond@gmail.com>
 *              
 */

# sdk/cmake/toolchains/xenon.cmake

set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR powerpc)

# Target triple for libxenon
set(TRIPLE xenon)

# Specify the compilers provided by the LibXenon toolchain
set(CMAKE_C_COMPILER xenon-gcc)
set(CMAKE_CXX_COMPILER xenon-g++)
set(CMAKE_ASM_COMPILER xenon-gcc)
set(CMAKE_RC_COMPILER xenon-windres)

# Force the compiler checks to pass when cross-compiling
set(CMAKE_C_COMPILER_WORKS TRUE)
set(CMAKE_CXX_COMPILER_WORKS TRUE)

# Xbox 360 / LibXenon specific compiler flags
set(XBOX360 TRUE)
set(LIBXENON TRUE)

add_definitions(-D__XENON__ -D_PPC_ -D__POWERPC__)

# Include path adjustments for LibXenon headers/libs
set(CMAKE_FIND_ROOT_PATH $ENV{XENONDEV})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)