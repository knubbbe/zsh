# Keybinds
bindkey '^ ' autosuggest-accept

bindkey "^[[5~" beginning-of-buffer-or-history
bindkey "^[[6~" end-of-buffer-or-history
# Shift+Tab
bindkey "^[[Z" reverse-menu-complete
# Ctrl+Left Ctrl+Right
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
# Del
bindkey "\e[3~" delete-char 
# Home & End
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# bind up and down arrow keys
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
