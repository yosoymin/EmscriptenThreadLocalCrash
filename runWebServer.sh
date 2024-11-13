EMSDK_DIR=/home/nebula/buildAgent/work/278ffa5a4e61cd99/Code/Libs/SDKs/emsdk_Linux
EMSCRIPTEN_DIR=$EMSDK_DIR/upstream/emscripten
export PATH="$PATH:$EMSCRIPTEN_DIR"
emrun --serve_root . --no_browser foo.html
