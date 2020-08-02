#-------------------------------
#                    ZSH MODULES
#-------------------------------
zmodload zsh/complete       # Allows for command completion
zmodload zsh/deltochar      # Adds 2 ZLE functions, delete-to-char and zap-to-char
zmodload zsh/zle            # Allows the use of the Zsh Line Editor
zmodload zsh/zpty           # ZPTY Module
zmodload zsh/zleparameter   # Access to internals of the ZLE
zmodload zsh/zutil          # Gives some zstyle options

#-------------------------------
#              ZSH FUNCTION PATH
#-------------------------------
fpath=("$HOME/config/zsh/plugins/completions/src" /usr/share/zsh/site-functions $fpath)
#for ifile in $fpath/*; autoload -Uz $ifile;
autoload -Uz compinit promptinit colors
autoload -Uz zmv zed fast-highlight add-zle-hook-widget predict-on
autoload -Uz edit-command-line vcs_info select-word-style
compinit
promptinit
colors
select-word-style bash;

zle -N edit-command-line

