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
if [ -t 0 ]; then   # only run if stdin is a terminal
    stty -ixon
fi
