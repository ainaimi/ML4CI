#! /bin/bash

# switch to a new temporary branch
cd ..
mkdir build_dir
cd build_dir
git clone -b master https://github.com/ainaimi/ML4CI
cd ML4CI 
export TRAVIS_BUILD_DIR=$(pwd)

# run website/_build.sh 
website/_build.sh

# run website/_deploy.sh local
website/_deploy.sh local

# rm build_directory
rm -rf ../../build_dir