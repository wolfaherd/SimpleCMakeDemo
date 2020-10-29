###
 # @Description: =build android library
 # @Author: wolf-herd
 # @Date: 2020-09-21 10:29:50
 # @LastEditTime: 2020-10-19 20:29:21
 # @LastEditors: wolf-herd
### 
#!/bin/bash
export SIMPLE_CMAKE_DEMO_OUTPUT=$(pwd)/output/

export NDK_HOME= #use your ndk path
export PATH=:$PATH #use your cmake bin path

ABI_ARRAY="arm64-v8a armeabi-v7a"

for ABI in $ABI_ARRAY
do
      if [[ “$@“ =~ "-d" ]];then
            echo "----------------------------cmake debug----------------------------"
            cmake -DDEBUG=ON -DCMAKE_TOOLCHAIN_FILE=$NDK_HOME/build/cmake/android.toolchain.cmake \
                  -DANDROID_NDK=$NDK_HOME \
                  -DANDROID_ABI=$ABI \
                  -DANDROID_TOOLCHAIN_NAME=clang \
                  -DANDROID_NATIVE_API_LEVEL=19 \
                  #-DANDROID_STL=c++_shared \
                  ../
      else      
            echo "----------------------------cmake release----------------------------"
            cmake -DDEBUG=NO -DCMAKE_TOOLCHAIN_FILE=$NDK_HOME/build/cmake/android.toolchain.cmake \
                  -DANDROID_NDK=$NDK_HOME \
                  -DANDROID_ABI=$ABI \
                  -DANDROID_TOOLCHAIN_NAME=clang \
                  -DANDROID_NATIVE_API_LEVEL=19 \
                  ../
                  #-DANDROID_STL=c++_shared \
      fi
      make -j4
done

