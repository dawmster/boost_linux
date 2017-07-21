rm -R compiling_boost
mkdir compiling_boost
cd compiling_boost

curl -L https://dl.bintray.com/boostorg/release/1.64.0/source/boost_1_64_0.tar.gz --output boost.tar.gz --silent
tar xvzf boost.tar.gz

mkdir boost_binaries
cd boost_binaries
mkdir boost
cd ../boost_1_64_0/

./bootstrap.sh --prefix=../boost_binaries/boost --with-libraries=thread,program_options,filesystem,date_time
./b2 --layout=versioned --build-type=complete install
cd ../boost_binaries
tar cvf boost.tar.gz boost/


