echo "#########################################################"
echo "# jkcoxson and spidy123222's DolphiniOS install script. #"
echo "#########################################################\n\n\n"

if [ "$EUID" -ne 0 ]
  then echo "Please run as root. Exiting..."
  exit
fi

echo "Root check passed, continue install."

apt-get install build-essential checkinstall git autoconf automake

apt install libtool m4 automake

git clone https://github.com/libimobiledevice/libplist
cd libplist
apt-get install python-dev --assume-yes
apt-get install pkg-config --assume-yes
./autogen.sh
./autogen.sh
make
make install
cd ../
git clone https://github.com/jkcoxson/libusbmuxd
cd libusbmuxd
./autogen.sh
./autogen.sh
make
make install
cd ../
git clone https://github.com/jkcoxson/libimobiledevice
cd libimobiledevice
./autogen.sh
./autogen.sh
make
make install
cd ../
ldconfig
echo
echo
echo
echo "##############################"
echo "# Script has been installed. #"
echo "##############################\n\n\n"

idevice_id
