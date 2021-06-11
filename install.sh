echo "#########################################################"
echo "# jkcoxson and spidy123222's DolphiniOS install script. #"
echo "#########################################################\n\n\n"

if [ "$EUID" -ne 0 ]
  then echo "Please run as root. Exiting..."
  exit
fi

echo "Root check passed, continue install."

apt-get install git -y

apt install build-essential -y

apt-get install glibtool -y
apt-get install make -y


apt-get install cpp -y
apt-get install gcc-8 -y


apt-get update -y
apt-get upgrade -y


apt-get clang -y
apt-get install build-essential checkinstall git autoconf automake -y

apt install libtool m4 automake -y

apt-get install python-dev -y
apt-get install pkg-config -y

apt-get install libavahi-client-dev -y
apt-get install python-dev --fix-missing -y


apt-get install cython -y
dpkg --configure -a
python setup.py install
pip install cython --install-options="--no-cython-compile"



apt-get autoheader -y
apt-get install libusb-1.0-0-dev -y


apt-get install libssl-dev -y
apt-get install libc6-udeb -y


apt-get install libc6-dev -y
apt-get install libtool-bin -y


apt-get install libplist++-dev -y
apt-get install libplist++ -y


mkdir openssl
cd openssl
wget https://www.openssl.org/source/openssl-${OPENSSL_VER}.tar.gz
tar xf openssl-${OPENSSL_VER}.tar.gz
cd openssl-${OPENSSL_VER}
./config zlib shared no-ss13
make -j4
make install
cd ..
cd ..

git clone https://github.com/libimobiledevice/libplist
cd libplist
./autogen.sh --enable-debug
./autogen.sh --enable-debug
make
make install
cd ../


git clone https://github.com/jkcoxson/libusbmuxd
cd libusbmuxd
./autogen.sh --enable-debug
./autogen.sh --enable-debug
make
make install
cd ../

git clone https://github.com/jkcoxson/libimobiledevice
cd libimobiledevice
./autogen.sh --enable-debug
./autogen.sh --enable-debug
make
make install
cd ../

git clone https://github.com/jkcoxson/usbmuxd2
cd usbmuxd2
./autogen.sh --enable-debug
./autogen.sh --enable-debug
make
make install
cd ../

git clone https://github.com/tihmstar/libgeneral.git
cd libgeneral
./autogen.sh --enable-debug
./autogen.sh --enable-debug
make
make install
cd ../

apt-get install libplist++-dev -y
apt-get install libplist++ -y


ldconfig
echo
echo
echo
echo "##############################"
echo "#   Installation Completed.  #"
echo "##############################\n\n\n"

idevice_id
