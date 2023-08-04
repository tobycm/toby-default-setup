sudo apt install git build-essential byacc -y

git clone https://github.com/Duncaen/OpenDoas

cd OpenDoas

./configure

sudo make install

cd ..

rm -rf OpenDoas

sudo runuser -c "echo 'permit nopass keepenv :toby as root' > /etc/doas.conf"

sudo ln -f /usr/local/bin/doas /bin/sudo
