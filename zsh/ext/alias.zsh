#   LS   
alias ls='exa -aF --color=auto --group-directories-first --sort=extension' 
alias ll='exa -alF'
alias la='exa -a'

alias mkdir='mkdir -v'
alias mv='timeout 8 mv -iv'
alias rm='noglob timeout 3 rm -Iv --one-file-system --preserve-root'

alias chown='chown -c'
alias cp='cp -iv'
alias diff='diff --color=auto'
alias dmesg='dmesg --color=always'

alias tmux='tmux -2'
alias pack='updpkgsums && makepkg -Ccfis'
alias myip='curl ifconfig.me'
alias blkid='sudo blkid'

alias qemu_start='qemu-system-x86_64 -enable-kvm -m 6G -cpu host -smp 8'
alias qemu_make='qemu-img create -f qcow2'

alias open='DISPLAY=:0 firefox --new-tab'

alias listchanged="pacman -Qii | awk '/^MODIFIED/ {print $2}'"
alias cat='bat'

alias traceme='traceroute `echo $SSH_CLIENT | cut -f 1 -d " "`'
alias cr='cargo run'
alias cn='cargo new'
alias cb='cargo build'

alias v='vim'
alias faas-cli='OPENFAAS_URL=https://fn.oxide.one faas-cli'
