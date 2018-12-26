FROM ubuntu
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install -y ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip
RUN cd ~ && git clone https://github.com/neovim/neovim.git  && cd ~/neovim && make CMAKE_BUILD_TYPE=Release &&  make install && cd .. && rm -r ~/neovim
RUN apt-get install python-dev python-pip python3-dev python3-pip -y
RUN pip3 install --user pynvim
RUN pip3 install --upgrade pip




