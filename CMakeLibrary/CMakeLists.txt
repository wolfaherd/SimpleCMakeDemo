# CMakeList.txt: PIMediaPlayerExtra 的 CMake 项目，在此处包括源代码并定义
# 项目特定的逻辑。
#
cmake_minimum_required (VERSION 3.8)

if (MSVC)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /std:c++17 /O2 /Zc:wchar_t-")
else ()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -O2 -Wall -g")
endif ()

set(
        SOURCE_FILES
		"include/HelloWorld.h"
       	"src/HelloWorld.cpp"
)

# 将源代码添加到此项目的可执行文件。
add_library (PIMediaPlayerExtra SHARED ${SOURCE_FILES})

target_include_directories(PIMediaPlayerExtra PRIVATE ../CMakeLibrary/include)

# 指定库文件输出路径
if (WIN32)
	set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/win-build/output/)
	MESSAGE(STATUS "Now is windows")
else()
	set(OUTPUT_PATH $ENV{SIMPLE_CMAKE_DEMO_OUTPUT})
	set(LIBRARY_OUTPUT_PATH ${OUTPUT_PATH}/${ANDROID_ABI})
	MESSAGE(STATUS "Now is Other OS's.")
endif ()


# TODO: 如有需要，请添加测试并安装目标。
