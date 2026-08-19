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