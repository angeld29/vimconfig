FROM ubuntu-nvim
RUN apt-get install ctags -y
RUN git clone https://github.com/angeld29/vimconfig.git && cd vimconfig && ./deploy
RUN nvim -c 'PlugInstall' -c 'qa!'
