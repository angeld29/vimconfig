FROM openshift/base-centos7
RUN git clone https://github.com/angeld29/vimconfig.git && cd vimconfig && ./deploy
RUN yum -y install epel-release
RUN curl -o /etc/yum.repos.d/dperson-neovim-epel-7.repo https://copr.fedorainfracloud.org/coprs/dperson/neovim/repo/epel-7/dperson-neovim-epel-7.repo 
RUN yum -y install neovim --enablerepo=epel
