# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by oscar
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Export the sudoer
export SUDO_EDITOR=/usr/bin/nvim

# Enable colors and change prompt:
autoload -U colors && colors
autoload -Uz compinit
compinit

alias gst='git status'
alias ll='ls -lah --color=auto'
alias ls='ls --color=auto'
alias th='cd ~/repos/thesis/'
alias rr='ranger'
alias config='/usr/bin/git --git-dir=/home/oscar/.cfg/ --work-tree=/home/oscar'

# For getting syntax highlighting - installing the highlighting on the system
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
