#-----------------------------------------
#   Keybindings
#-----------------------------------------
bindkey -e
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
zle -C most-recent-file menu-complete _generic
zle -N edit-command-line
zle -N autosuggest-fetch
zle -N history-substring-search-up
zle -N history-substring-search-down

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[[5~' history-search-backward
bindkey '^[[6~' history-search-forward
bindkey '^[^I'      reverse-menu-complete
bindkey '^[[1;5D'   backward-word
bindkey '^[[1;5C'   forward-word
bindkey '^H'     backward-kill-word
bindkey '^[[3^'  kill-word
bindkey '^[[H' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[4h'   overwrite-mode          # Insert
bindkey '^[[P'   delete-char             # Del
bindkey '^R'      history-incremental-pattern-search-backward 
