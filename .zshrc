# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
#autoload -U compinit
#zstyle ':completion:*' menu select
#zmodload zsh/complist
#compinit
#_comp_options+=(globdots) # Include hidden files.

### Antigen start ###

# Antigen settings
ADOTDIR="$HOME/.zsh/antigen"
# Load Antigen
source $ADOTDIR/antigen.zsh
# Library
antigen use oh-my-zsh

# Library Bundles
antigen bundle git
antigen bundle svn-fast-info
antigen bundle fzf
antigen bundle zsh-completions
antigen bundle history-substring-search

# External Bundles
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle wting/autojump 
antigen bundle zsh-users/zsh-syntax-highlighting

# Themes
antigen theme romkatv/powerlevel10k

# Apply
antigen apply

### Antigen end ###

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load aliases and keybinds if existent.
[ -f "$HOME/.zsh/aliasrc" ] && source "$HOME/.zsh/aliasrc"
[ -f "$HOME/.zsh/keybinds.zsh" ] && source "$HOME/.zsh/keybinds.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
