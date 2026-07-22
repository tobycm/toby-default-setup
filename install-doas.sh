sudo apt-get install git build-essential byacc libcrypt-dev -y

git clone --depth=1 https://github.com/Duncaen/OpenDoas

cd OpenDoas

./configure

sudo make install

cd ..

rm -rf OpenDoas

sudo runuser -c "echo 'permit nopass keepenv :$USER as root' > /etc/doas.conf"
