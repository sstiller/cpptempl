cmake_minimum_required (VERSION 3.8.2)
set (CMAKE_INSTALL_PREFIX /usr/)
option(BUILD_TESTS "enable building test applications" ON)
project(cpptempl)

add_library(${PROJECT_NAME} INTERFACE)
add_library(${PROJECT_NAME}::${PROJECT_NAME} ALIAS ${PROJECT_NAME})

include(GNUInstallDirs)

add_subdirectory(src)

if(BUILD_TESTS)
    MESSAGE(STATUS "Tests enabled")
    enable_testing()
    add_subdirectory(test)
endif()

include(pkgconfig/createpkgconfig.cmake)
include(cmake/createcmakeconfig.cmake)
