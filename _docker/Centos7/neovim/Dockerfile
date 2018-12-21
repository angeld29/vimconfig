FROM openshift/base-centos7
RUN yum -y install ninja-build libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip
RUN cd ~ && git clone https://github.com/neovim/neovim.git  && cd ~/neovim && make CMAKE_BUILD_TYPE=Release &&  make install && cd .. && rm -r ~/neovim




