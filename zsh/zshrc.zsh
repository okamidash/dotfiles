

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"
setopt promptsubst
# Load zinit
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# ===== MISC ====
BASEDIR=$(dirname "$0")
export EDITOR='vim'      # Neovim for everything
export VISUAL='vim'      # GUI editors? No thanks
export PAGER='less'       # For viewing long outputs

export LANG=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8
export CLICOLOR=1
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="20"
ZSH_AUTOSUGGEST_USE_ASYNC=1

WORDCHARS='*?_-[]~&;!#$%^(){}<>|'
source $BASEDIR/dircolors.zsh


# load zinit annexes 
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

# setup sane stuff from oh-my-zsh
zinit snippet OMZL::functions.zsh        # Needed Functions
zinit snippet OMZL::key-bindings.zsh     # Standard key bindings
zinit snippet OMZL::completion.zsh       # Completion tweaks
zinit snippet OMZL::termsupport.zsh      # Terminal Titles

# ==== INSTALL PROGRAMS ====
source $BASEDIR/programs.zsh
# ==== SETUP COMPLETION STUFF ====
source $BASEDIR/completion.zsh

# ==== ALIASES ====
alias ls='ls -aF --color=auto'

autoload -U promptinit; promptinit
zmodload zsh/nearcolor
zstyle :prompt:pure:path            color '#00ccff'
zstyle :prompt:pure:prompt:error    color '#ff0000'
zstyle :prompt:pure:prompt:success  color '#6600cc'
zstyle :prompt:pure:host            color '#cc80ff'
zstyle :prompt:pure:user            color '#29a3a3'
zstyle :prompt:pure:user:root       color '#66ffff'

# ==== PROMPT ====
zinit ice pick"async.zsh" src"pure.zsh" # with zsh-async library that's bundled with it.
zinit light sindresorhus/pure
