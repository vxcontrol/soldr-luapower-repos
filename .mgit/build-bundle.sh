#/bin/sh

die() { echo "ERROR: $@" >&2; exit 1; }
usage() { echo "USAGE: ./mgit build-bundle [all|mingw32|mingw64|linux32|linux64|osx64]"; exit; }

function build_bundle() {
    BF=""
    BINARY_SUFFIX=""
    BINARY_PREFIX="64"
    BINARY_OSX=""
    [ -z ${1##*32} ] && BF="-m32" && BINARY_PREFIX="86"
    [ -z ${1##mingw*} ] && BINARY_SUFFIX=".exe"
    [ -z ${1##osx*} ] && BINARY_OSX="osx"
    BINARY="luajit$BINARY_PREFIX$BINARY_OSX$BINARY_SUFFIX"

    echo "---------------------------------------"
    echo "Build bundle for $1 -> build/$BINARY"
    mkdir -p build/$1
    P=$1 ./mgit bundle $BF -a "`P=$1 ./mgit bundle -las`" -m "`P=$1 ./mgit bundle -lls`" -v -o build/$1/$BINARY
}

function build_all() {
    build_bundle mingw32
    build_bundle mingw64
    build_bundle linux32
    build_bundle linux64
    build_bundle osx64
    exit
}

[ -z "$1" ] && usage
[ "$1" = "all" ] && build_all
build_bundle $1
