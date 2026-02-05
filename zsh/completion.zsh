# Initialize completion
autoload -Uz compinit && compinit
# Smart URLs.
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic
# Completion styling
# zstyle ':completion:*' menu select
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
# zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# zstyle ':completion:*' verbose yes
# zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
# zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
# zstyle ':completion:*:messages' format '%F{purple}-- %d --%f'
# zstyle ':completion:*:warnings' format '%F{red}-- no matches found --%f'
# zstyle ':completion:*' group-name ''
# zstyle ':completion:*:default' list-prompt '%S%M matches%s'
# zstyle ':completion:*' accept-exact '*(N)'
# zstyle ':completion:*' use-cache on
# zstyle ':completion:*' cache-path ~/.zsh/cache
# zstyle ':completion:*' list-dirs-first true
# ==================
zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes
zstyle ':completion::complete:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*' list-colors $LS_COLORS
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:functions' ignored-patterns '(_*|pre(cmd|exec))'
zstyle ':completion:*' rehash true
zstyle ':completion:*' list-dirs-first true

# # grab completions as snippets from GitHub repos
# zinit wait lucid as"completion" \
#   atpull"zinit creinstall -q ." \
#   nocompile \
#   for \
#     has"bundle"           https://github.com/zsh-users/zsh-completions/raw/HEAD/src/_bundle \
#     has"conda"            https://github.com/conda-incubator/conda-zsh-completion/raw/HEAD/_conda \
#     has"docker"           https://github.com/docker/cli/raw/HEAD/contrib/completion/zsh/_docker \
#     has"golang"           https://github.com/zsh-users/zsh-completions/raw/HEAD/src/_golang \
#     has"nano"             https://github.com/zsh-users/zsh-completions/raw/HEAD/src/_nano \
#     has"node"             https://github.com/zsh-users/zsh-completions/raw/HEAD/src/_node \
#     has"nvm"              https://github.com/zsh-users/zsh-completions/raw/HEAD/src/_nvm \
#     has"psql"             https://github.com/zsh-users/zsh-completions/raw/HEAD/src/_pgsql_utils \
#     has"rails"            https://github.com/zsh-users/zsh-completions/raw/HEAD/src/_rails \
#     has"rbenv"            https://github.com/rbenv/rbenv/raw/HEAD/completions/_rbenv \
#     has"redis-cli"        https://github.com/zsh-users/zsh-completions/raw/HEAD/src/_redis-cli \
#     has"shellcheck"       https://github.com/zsh-users/zsh-completions/raw/HEAD/src/_shellcheck \
#     has"vagrant"          https://github.com/hashicorp/vagrant/raw/HEAD/contrib/zsh/_vagrant \
#     has"yarn"             https://github.com/zsh-users/zsh-completions/raw/HEAD/src/_yarn \
#     has"git"    mv"git-completion.zsh -> _git"    https://github.com/git/git/raw/HEAD/contrib/completion/git-completion.zsh \
#     has"pyenv"  mv"pyenv.zsh -> _pyenv"    https://github.com/pyenv/pyenv/raw/HEAD/completions/pyenv.zsh \
#     if'[[ "$OSTYPE" = linux-gnu* ]]'  has"fail2ban-client"    https://github.com/zsh-users/zsh-completions/raw/HEAD/src/_fail2ban-client \
#     if'[[ "$OSTYPE" = linux-gnu* ]]'  has"ufw"                https://github.com/zsh-users/zsh-completions/raw/HEAD/src/_ufw \
#     if'[[ "$OSTYPE" = darwin* ]]'     has"security"           https://github.com/ohmyzsh/ohmyzsh/raw/HEAD/plugins/macos/_security \

# generate other completions from externally installed programs
# zinit wait lucid as"completion" \
#   atpull"zinit creinstall -q ." \
#   nocompile \
#   for \
#     has"doctl"      id-as"_local/completions/doctl"       atclone"doctl completion zsh > _doctl"          zdharma-continuum/null \
#     has"fnm"        id-as"_local/completions/fnm"         atclone"fnm completions --shell zsh > _fnm"            zdharma-continuum/null \
#     has"gh"         id-as"_local/completions/gh"          atclone"gh completion -s zsh > _gh"             zdharma-continuum/null \
#     has"glab"       id-as"_local/completions/glab"        atclone"glab completion -s zsh > _glab"         zdharma-continuum/null \
#     has"helm"       id-as"_local/completions/helm"        atclone"helm completion zsh > _helm"           zdharma-continuum/null \
#     has"hugo"       id-as"_local/completions/hugo"        atclone"hugo completion zsh > _hugo"            zdharma-continuum/null \
#     has"kubectl"    id-as"_local/completions/kubectl"     atclone"kubectl completion zsh > _kubectl"      zdharma-continuum/null \
#     has"minikube"   id-as"_local/completions/minikube"    atclone"minikube completion zsh > _minikube"    zdharma-continuum/null \
#     has"ng"         id-as"_local/completions/ng"          atclone"ng completion script > _ng"             zdharma-continuum/null \
#     has"op"         id-as"_local/completions/op"          atclone"op completion zsh > _op"                zdharma-continuum/null \
#     has"pip"        id-as"_local/completions/pip"         atclone"pip completion --zsh > pip"             zdharma-continuum/null \
#     has"pnpm"       id-as"_local/completions/pnpm"        atclone"pnpm completion zsh > _pnpm"            zdharma-continuum/null \
#     has"pscale"     id-as"_local/completions/pscale"      atclone"pscale completion zsh > _pscale"        zdharma-continuum/null \
#     has"rustup"     id-as"_local/completions/rustup"      atclone"rustup completions zsh > _rustup"       zdharma-continuum/null \
#     has"supabase"   id-as"_local/completions/supabase"    atclone"supabase completion zsh > _supabase"    zdharma-continuum/null \
#     has"tailscale"  id-as"_local/completions/tailscale"   atclone"tailscale completion zsh > _tailscale"  zdharma-continuum/null