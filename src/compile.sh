#!/bin/bash


#source /home/archkubi/tmp/emsdk/emsdk_env.fish
# compile game
emcc *.c -o out/index.html \
                                   -I/home/archkubi/tmp/raylib/src \
                                   -I/home/archkubi/tmp/raylib/src/external \
                                   /home/archkubi/tmp/raylib/build/raylib/libraylib.a \
                                   -DPLATFORM_WEB \
                                   -s USE_GLFW=3 \
                                   -s ASYNCIFY \
                                   -s TOTAL_STACK=64MB \
                                   -s INITIAL_MEMORY=128MB \
                                   -s ASSERTIONS=1 \
                                   --preload-file resources@resources \
                                   --shell-file shell.html
