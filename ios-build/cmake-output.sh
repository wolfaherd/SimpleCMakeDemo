###
 # @Description: build debug and release
 # @Author: wolf-herd
 # @Date: 2020-10-17 17:06:25
 # @LastEditTime: 2020-10-19 20:18:39
 # @LastEditors: wolf-herd
### 
#!/bin/bash
cmake --build . --config Debug
cmake --build . --config Release
