sudo DEBIAN_FRONTEND=noninteractive apt-get install curl git zip unzip xz-utils clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev -y

mkdir -p ~/apps/

wget -O flutter.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.10.6-stable.tar.xz

tar xJf flutter.tar.xz -C ~/apps/

rm flutter.tar.xz
