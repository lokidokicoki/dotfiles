alias apt='aptitude'
alias dig='dig +multi'
alias dquilt='QUILT_PATCHES=debian/patches quilt'
alias dstat='dstat --bw'
alias dux='du -xm --max-depth=1'
alias e="$EDITOR"
alias g=git
alias gdb='gdb -silent'
alias hman='man --html=browser-pause'
#alias gnutls-cli="gnutls-cli --x509cafile /etc/ssl/certs/ca-certificates.crt"
alias la='ls -al'
alias ll='ls -lh'
alias massif='valgrind --tool=massif --depth=5 --alloc-fn={g_malloc,g_realloc,g_try_malloc,g_malloc0,g_mem_chunk_alloc}'
alias mysql='mysql --pager'
alias ping='ping -n'
alias pol='apt-cache policy'
alias rsync='rsync -h'
alias units='units --verbose'
alias wgoat='wget'
alias whois='whois -H'
alias xc='xclip -selection clipboard -in'
alias xp='xclip -selection clipboard -out'
alias xse='tail --follow=name ~/.xsession-errors -n 0'
alias ls="ls -G"
alias vi="mvim"
alias q="exit"
alias a="clear"
alias gss="git status"
alias gd="git diff"
alias ga="git add -p"
alias gg="git grep -n --color"
alias gc="git commit"
alias gfo="git fetch origin"
alias gro="git rebase origin/master"
alias gcm="git checkout master"
alias grod="git rebase origin/development"
alias gcd="git checkout development"
alias gcb="git checkout -b"
alias gs="git stash"
alias gsp="gs pop"
alias ra="sudo apachectl restart"
