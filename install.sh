sudo ""

export DEBIAN_FRONTEND=noninteractive

cat ssh-key.pub >> ~/.ssh/authorized_keys

[[ ! -f ./install-doas.sh ]] || ./install-doas.sh

[[ ! -f ./install-zsh.sh ]] || ./install-zsh.sh

[[ ! -f ./install-docker.sh ]] || ./install-docker.sh

[[ ! -f ./install-mise.sh ]] || ./install-asdf.sh
