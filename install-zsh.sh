sudo apt install git wget zsh -y

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

sudo chsh toby -s /bin/zsh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sudo apt install python3-venv

cd ~/.local/

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

python3 -m venv venv

source venv/bin/activate

pip install --upgrade pip

pip install thefuck

cd ~/.oh-my-zsh/plugins

git clone https://github.com/johnhamelink/env-zsh.git env

[[ ! -f ./install-bat.sh ]] || ./install-bat.sh
