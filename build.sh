EMSDK_DIR=/home/nebula/buildAgent/work/278ffa5a4e61cd99/Code/Libs/SDKs/emsdk_Linux
EMSCRIPTEN_DIR=$EMSDK_DIR/upstream/emscripten
export PATH="$PATH:$EMSCRIPTEN_DIR"
mkdir build
em++ -O1 -flto -pthread -o build/simpleLib.cpp.o -c simpleLib.cpp
em++ -O1 -flto -o build/main.cpp.o -c main.cpp
em++ -O1 -flto --embed-file=main.cpp@/ build/simpleLib.cpp.o build/main.cpp.o -o build/EmscriptenThreadLocalCrash.html
