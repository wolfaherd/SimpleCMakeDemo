###
 # @Description: cmake build xcode
 # @Author: wolf-herd
 # @Date: 2020-10-17 17:06:25
 # @LastEditTime: 2020-10-19 20:25:48
 # @LastEditors: wolf-herd
### 
#!/bin/bash
cmake .. -G Xcode -DCMAKE_TOOLCHAIN_FILE=./ios.toolchain.cmake -DPLATFORM=OS



