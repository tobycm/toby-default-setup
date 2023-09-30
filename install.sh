sudo ""

export DEBIAN_FRONTEND=noninteractive

cat ssh-key.pub >> ~/.ssh/authorized_keys

[[ ! -f ./install-doas.sh ]] || ./install-doas.sh

[[ ! -f ./install-zerotier.sh ]] || ./install-zerotier.sh

[[ ! -f ./install-zsh.sh ]] || ./install-zsh.sh

[[ ! -f ./install-docker.sh ]] || ./install-docker.sh

[[ ! -f ./install-flutter.sh ]] || ./install-flutter.sh

[[ ! -f ./install-nodejs.sh ]] || ./install-nodejs.sh

[[ ! -f ./install-asdf.sh ]] || ./install-asdf.sh
