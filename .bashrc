alias urestart='/home/sites/afisha.mail.ru/.www/bin/dev/uwsgi.sh'
alias ulog="tail -f /logs/afisha.mail.ru/uwsgi-afisha-error.log"
alias build='cd /home/sites/afisha.mail.ru/.www/frontend; /usr/bin/npm run build:dev'
alias cpbtest='bin/cpb test --no-adv-lock --no-frontend'
alias fixssh='eval $(tmux showenv -s SSH_AUTH_SOCK)'

export GIT_EDITOR=nvim
make_afisha() {
    git tag -a $1.$2 -m $1.$2
    git push origin tag $1.$2
    bin/dev/rpmbuild.sh afisha $1 $2
}
export TERM=xterm-256color
PS1="\[\e[0;32m\][\u@\h \W](\$(git branch 2>/dev/null | grep '*' | sed -e 's/\* //'))\\$\[\e[0m\] "
if [ -t 0 ]; then   # only run if stdin is a terminal
    stty -ixon
fi
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g "" --ignore "frontend/"'

