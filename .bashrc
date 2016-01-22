export TERM=xterm-256color
if [ -t 0 ]; then   # only run if stdin is a terminal
    stty -ixon
fi
