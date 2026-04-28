if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode reminder

ENABLE_CORRECTION="false"

COMPLETION_WAITING_DOTS="true"

TZ='America/Vancouver'; export TZ

plugins=(
  git
  dotenv
  zsh-autosuggestions
  copyfile
  copybuffer
  dirhistory
  jsontools
  history
  python
  bun
  catimg
  mise
  tailscale
  pm2
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Custom aliases
. ~/.zsh_aliases

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/venv/bin
export PATH=$PATH:/usr/sbin/

alias cat='batcat --paging=never'

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

alias sudo=doas

# go
export PATH=$HOME/apps/go/bin:$PATH
