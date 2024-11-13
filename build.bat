mkdir build
call em++.bat -O1 -flto -pthread -o build/simpleLib.cpp.o -c simpleLib.cpp
call em++.bat -O1 -flto -o build/main.cpp.o -c main.cpp
call em++.bat -O1 -flto --embed-file=main.cpp@/ build/simpleLib.cpp.o build/main.cpp.o -o build/EmscriptenThreadLocalCrash.html
