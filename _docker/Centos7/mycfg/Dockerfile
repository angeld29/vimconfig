FROM centos7-nvim
RUN yum -y install ctags -y
RUN git clone https://github.com/angeld29/vimconfig.git && cd vimconfig && ./deploy
RUN mkdir utils
RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/utils/fzf
RUN ~/utils/fzf/install --all

RUN yum -y install epel-release
RUN yum -y install the_silver_searcher

RUN nvim -c 'PlugInstall' -c 'qa!' 
#RUN yum -y install python34-setuptools
#RUN easy_install-3.4 pip
#RUN pip3 install --user pynvim
#RUN nvim -c 'UpdateRemotePlugins' -c 'qa!' 
