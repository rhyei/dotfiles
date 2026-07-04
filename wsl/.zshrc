export ZSH="$HOME/.oh-my-zsh"
export BUN_INSTALL="$HOME/.bun"
export PNPM_HOME="/home/user/.local/share/pnpm"
export NVM_DIR="$HOME/.nvm"

typeset -U path
path=(
  "$HOME/.local/bin"
  "$BUN_INSTALL/bin"
  "$PNPM_HOME/bin"
  "/usr/local/go/bin"
  $path
)

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)

source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
eval "$(zoxide init zsh --cmd cd)"

bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

alias ga='git add .'
alias gs='git status'
alias gp='git push'
alias gcm='git commit -m'
alias gd='git diff HEAD'
alias e='eza'
alias ls='eza'
alias z="zed"
