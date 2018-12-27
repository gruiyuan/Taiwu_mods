#!/bin/bash

#DLLPACK_VERSION="181226"

shopt -s nocasematch

cd /data/Taiwu_mods


# Download pre-compiled llvm libs
#echo "downloading dep dll packs...."
#curl -sLO https://github.com/phorcys/Taiwu_mods/releases/download/dll${DLLPACK_VERSION}/dlls-${DLLPACK_VERSION}.zip
#unzip ./dlls-${DLLPACK_VERSION}.zip -d ..


mkdir -p build ; cd build

cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .

echo "List builded Mods:"
ls -al Mods

cd ..

# If it compiled succesfully let's deploy
echo "build finished , result : $? , TRAVIS_BRANCH $TRAVIS_BRANCH , TRAVIS_PULL_REQUEST $TRAVIS_PULL_REQUEST"
/bin/bash .travis/deploy-linux.bash

