FROM ubuntu-nvim
RUN apt-get install ctags -y
RUN git clone https://github.com/angeld29/vimconfig.git && cd vimconfig && ./deploy
RUN mkdir utils
RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/utils/fzf
RUN ~/utils/fzf/install --all

RUN apt-get -y install silversearcher-ag
RUN nvim -c 'PlugInstall' -c 'qa!' 
RUN nvim -c 'UpdateRemotePlugins' -c 'qa!' 
