set EMSDK_PATH=..\Nebula\Nebula-Viewer\Code\Libs\SDKs\emsdk
set EMSCRIPTEN_DIR=%EMSDK_PATH%\upstream\emscripten
set PATH=%EMSCRIPTEN_DIR%;%PATH%
emrun.bat --serve_root . --no_browser foo.html
