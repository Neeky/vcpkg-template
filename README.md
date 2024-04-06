## vcpkg-template
vcpkg 管理 C/C++ 依赖的模板项目；


## 第一步 通过 vcpkg 增加依赖
```bash
vcpkg new --application
vcpkg add port fmt

```

## 第二步 cmake 引入依赖
```cmake
cmake_minimum_required(VERSION 3.10)

project(vcpkg-template)

find_package(fmt CONFIG REQUIRED)

add_executable(vcpkg-template src/main.cpp)

target_link_libraries(vcpkg-template PRIVATE fmt::fmt)
```

## 第三步 设置工具链让 cmake 知道在哪里找依赖
```bash
mkdir build && cd build && cmake .. -DCMAKE_VERBOSE_MAKEFILE=on -DCMAKE_TOOLCHAIN_FILE=/usr/local/vcpkg/scripts/buildsystems/vcpkg.cmake && cmake --build .
```

---
