rm -rf ./build
mkdir build && cd build && cmake .. -DCMAKE_VERBOSE_MAKEFILE=on -DCMAKE_TOOLCHAIN_FILE=/usr/local/vcpkg/scripts/buildsystems/vcpkg.cmake && cmake --build .