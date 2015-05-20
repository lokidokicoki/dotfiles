alias dig='dig +multi'
alias e="$EDITOR"
alias g=git
alias gdb='gdb -silent'
alias hman='man --html=browser-pause'
alias ls='ls -G'
alias l='ls'
alias la='ls -al'
alias ll='ls -lh'
alias ping='ping -n'
alias pol='apt-cache policy'
alias rsync='rsync -h'
alias wgoat='wget'
alias whois='whois -H'
alias xc='xclip -selection clipboard -in'
alias xp='xclip -selection clipboard -out'
alias vi="mvim"
alias q="exit"
alias a="clear"
alias gss="git status"
alias gd="git diff --color-words"
alias ga="git add -p"
alias gg="git grep -n --color"
alias gc="git commit"
alias gca="git commit --amend"
alias gfo="git fetch origin"
alias gro="git rebase origin/master"
alias gfr="gfo && gro"
alias gra="git rebase --abort"
alias gcm="git checkout master"
alias gcb="git checkout -b"
alias gk="git checkout "
alias gst="git stash"
alias gsp="git stash pop"
alias ra="sudo apachectl restart"
alias gb="git branch"
alias gl="git lola"
alias grc="git rebase --continue"
alias gmt="git mergetool"
alias sw1="sass --watch app/assets/custom/styles/output/styles.scss:app/assets/custom/styles/output/styles.css &"
alias sw2="sass --watch app/assets/custom/styles/default/default.scss:app/assets/custom/styles/default/default.css &"
alias sw3="sass --watch app/assets/custom/styles/title/title.scss:app/assets/custom/styles/title/title.css &"
alias sw="sw1 && sw2 && sw3"
alias sk="ps -aef | grep sass | grep scss | awk '{print \$2;}' | xargs -I {} kill {}"
alias gpl="git pull"
alias gph="git push"
alias ni="npm install"
alias ns="npm start"
alias nt="npm test"
alias gpi="gpl && ni"
alias grr="grunt release"
alias grd="grunt deploy"
alias grs="grunt sass"
alias grt="grunt template-release"
alias gr="grunt"
alias gj="grunt jsdoc"
