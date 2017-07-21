#H1 Built boost library for Linux.
I use it in Continous Integration (e.g. Visual Studio Team Services)
#H2 How to build
cd ./boost_build
./getboost.sh

get products from ./build_boost/compiling_boost/boost_binaries/boost
products are 2 directories: 
* include
* lib

put those in place of ./include and ./lib
rm -R ./build_boost/compiling_boost
git add .
git commit -m 'my version'

