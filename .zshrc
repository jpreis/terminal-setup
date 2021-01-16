# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Disaable compfix warning
ZSH_DISABLE_COMPFIX=true 

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh" # path to oh-my-zsh installation
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(zsh-syntax-highlighting autojump git)
source $ZSH/oh-my-zsh.sh

# Personal aliases
alias zshcfg="code ~/.zshrc"
alias zshsrc="source ~/.zshrc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Enable key-bindings for fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval $(thefuck --alias)