set(SRC_FILES
    CalculationModule.cpp
)
set(HEADER_FILES
    CalculationModule.h
)
# build as a static lib
add_library(AuxModule STATIC ${HEADER_FILES} ${SRC_FILES})
target_link_libraries(AuxModule  PUBLIC Eigen3::Eigen)
# populate lib directory
target_include_directories(AuxModule INTERFACE ${CMAKE_CURRENT_LIST_DIR})
target_compile_options(AuxModule PRIVATE $<$<CXX_COMPILER_ID:MSVC>:${MSVC_FLAGS}>
                       $<$<CXX_COMPILER_ID:GNU>:${GNU_FLAGS}>)