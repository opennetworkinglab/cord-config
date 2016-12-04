# Instruction of patching and running quagga

```sh
sudo apt-get install wget gawk texinfo build-essential
wget http://download.savannah.gnu.org/releases/quagga/quagga-0.99.23.tar.gz
tar zxvf quagga-0.99.23.tar.gz
cd quagga-0.99.23
patch -p1 < ../change.diff
./configure --enable-fpm
make
sudo make install
cd ..
sudo cp zebra.conf /usr/local/etc
sudo ./start-zebra.sh
sudo ./stop-zebra.sh
```
