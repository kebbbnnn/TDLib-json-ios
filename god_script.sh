#!/bin/sh

cd TDLib-json-ios/submodule/td/
mkdir native-build
cd native-build
cmake ..
cmake --build . --target prepare_cross_compiling
cd ..
cd example/ios
chmod +x build_platform-openssl.sh
./build_platform-openssl.sh --platform iOS
chmod +x build_platform.sh
./build_platform.sh --platform iOS