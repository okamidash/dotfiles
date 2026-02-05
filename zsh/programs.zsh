# Fast syntax highlighting and suggestions
zinit wait lucid for \
    atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
        zdharma-continuum/fast-syntax-highlighting \
        OMZP::colored-man-pages \
    atload"!_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions

# Enhanced completions
zinit wait lucid for \
    blockf atpull'zinit creinstall -q .' \
        zsh-users/zsh-completions

# better Ctrl+R history searching
zinit ice wait lucid depth"1" \
  atload"
    zstyle ':history-search-multi-word' highlight-color 'fg=yellow,bold'
    zstyle ':history-search-multi-word' page-size 15
    zstyle ':plugin:history-search-multi-word' active 'standout'
    zstyle ':plugin:history-search-multi-word' reset-prompt-protect 1
  " \
  trackbinds
zinit light zdharma-continuum/history-search-multi-word

# Other useful plugins
zinit wait lucid for \
    hlissner/zsh-autopair