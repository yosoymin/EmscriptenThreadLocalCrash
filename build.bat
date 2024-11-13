set EMSDK_DIR=..\Nebula\Nebula-Viewer\Code\Libs\SDKs\emsdk
set EMSCRIPTEN_DIR=%EMSDK_DIR%\upstream\emscripten
set PATH=%EMSDK_DIR%;%EMSCRIPTEN_DIR%;%PATH%
mkdir build
call em++.bat -Oz -flto -pthread -o build/simpleLib.cpp.o -c simpleLib.cpp
call emar.bat qc build/libsimpleLib.a build/simpleLib.cpp.o
call em++.bat -Oz -flto -o build/main.cpp.o -c main.cpp
call em++.bat -Oz -flto --embed-file=main.cpp@/ build/main.cpp.o -o build/EmscriptenThreadLocalCrash.html build/libsimpleLib.a
