# User specific aliases and functions
alias ubuild='docker-compose up -d --no-deps --build back'
alias urestart='docker-compose restart back'
alias ngrestart='docker-compose up -d --no-deps --build nginx'
alias pyrestart='docker-compose restart back-python'
alias build_front='cd /home/sites/afisha.mail.ru/.www/frontend; /usr/bin/npm run build:dev'
alias baseupdate='docker-compose stop mysql &&   docker-compose rm mysql &&  docker volume rm kino_mysql-dir &&  docker-compose up -d --no-deps mysql'
alias ulog="docker exec -it kino-back tail -f /logs/afisha.mail.ru/uwsgi-afisha-error.log"
alias cpbtest='bin/cpb test --no-adv-lock --no-frontend'
alias fixssh='eval $(tmux showenv SSH_AUTH_SOCK)'
alias nvim='~/bin/nvim.appimage'
alias kinoclean='git branch --merged origin/release  |grep KINO | xargs git br -d'
alias pylog="docker exec -it kino-back-python tail -f /logs/kinopy.mail.ru/uwsgi-kinopy-error.log"
function pymanage(){ docker exec -it kino-back-python /home/sites/pypo_venv/bin/python bin/manage.py $@; }

export GIT_EDITOR=nvim
make_afisha() {
    git tag -a $1.$2 -m $1.$2
    git push origin tag $1.$2
    bin/dev/rpmbuild.sh afisha $1 $2
}
tic -x -o ~/.terminfo ~/.term-24bit.terminfo
export TERM=xterm-256color
export TERM=xterm-24bit
PS1="\[\e[0;32m\][\u@\h \W](\$(git branch 2>/dev/null | grep '*' | sed -e 's/\* //'))\\$\[\e[0m\] "
if [ -t 0 ]; then   # only run if stdin is a terminal
    stty -ixon
fi
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g "" --ignore "frontend/"'

alias qvm='cmake  --build _cmake/qvm/ --target qvm && cp _cmake/qvm/qwprogs.* ../../qwtf/fortress/'
