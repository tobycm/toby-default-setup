sudo apt-get install git wget zsh -y

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

sudo chsh $USER -s /bin/zsh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

mkdir -p ~/.local/

[[ ! -f ./install-uv.sh ]] || ./install-uv.sh

if command -v uv &> /dev/null; then
    uv venv ~/.local/venv
else
    echo "uv is missing. no global venv."
fi

git clone --depth=1 https://github.com/johnhamelink/env-zsh.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/env

[[ ! -f ./install-bat.sh ]] || ./install-bat.sh

cp .zshrc ~
cp .zsh_aliases ~
cp .p10k.zsh ~