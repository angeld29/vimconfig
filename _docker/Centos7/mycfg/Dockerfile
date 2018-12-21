FROM centos7-nvim
RUN yum -y install ctags -y
RUN git clone https://github.com/angeld29/vimconfig.git && cd vimconfig && ./deploy
RUN mkdir utils
RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/utils/fzf
RUN ~/utils/fzf/install --all

RUN yum -y install epel-release
RUN yum -y install the_silver_searcher
RUN nvim -c 'PlugInstall' -c 'qa!' 

RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm
RUN yum install -y python36u python36u-libs python36u-devel python36u-pip
RUN pip3.6 install --upgrade pip
RUN pip3.6 install --user pynvim
RUN nvim -c 'UpdateRemotePlugins' -c 'qa!' 
