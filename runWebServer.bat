set EMSDK_DIR=..\Nebula\Nebula-Viewer\Code\Libs\SDKs\emsdk
set EMSCRIPTEN_DIR=%EMSDK_DIR%\upstream\emscripten
set PATH=%EMSCRIPTEN_DIR%;%PATH%
emrun.bat --serve_root . --no_browser foo.html
