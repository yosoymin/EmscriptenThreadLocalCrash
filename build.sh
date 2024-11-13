EMSDK_DIR=/home/nebula/buildAgent/work/278ffa5a4e61cd99/Code/Libs/SDKs/emsdk_Linux
EMSCRIPTEN_DIR=$EMSDK_DIR/upstream/emscripten
export PATH="$PATH:$EMSCRIPTEN_DIR"
mkdir build
em++ -Oz -flto -pthread -o build/simpleLib.cpp.o -c simpleLib.cpp
emar qc build/libsimpleLib.a build/simpleLib.cpp.o
em++ -Oz -flto -o build/main.cpp.o -c main.cpp
em++ -Oz -flto --embed-file=main.cpp@/ build/main.cpp.o -o build/EmscriptenThreadLocalCrash.html build/libsimpleLib.a
