FROM ubuntu
RUN apt-get update

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
#RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/#AllowAgentForwarding yes/AllowAgentForwarding yes/' /etc/ssh/sshd_config
RUN mkdir /root/.ssh && chmod 700 /root/.ssh
RUN echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEA2RBc80Ao/mqXNqgnNzPv8ITEJsJa8lwlTZ2jy9qWUZ86+LVBGA8riGP/ZAkxuHKRklWwla4XzDzZ/9zVRJ7KkyBEoXXIOY5nLuMeyblvvzbmY4myNlR95HLPWV6iHaYEKzozal0mrskAmTvYPekYKC6S1O2DIrnkxpACzJSY5gaMGx+zMz6VFuIeVimYPl/GJIFFLbAe6wIO/F7fqrSM5FXfVyS44goBAhqWMjBkVOSBzn6ARfJtdqz2TWeY4etE4CpAvgBy1Q7YA/eTOxfiw/7BzMTzTebO408sj6Hr8yu1mH4B20WA5Mt3DF0a+oNXHpuMLiFPHcEh+owO1vAo8Q== rsa-key-20161115' > /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN apt-get -y install language-pack-ru
RUN update-locale LANG=ru_RU.UTF-8

RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:jonathonf/vim
RUN apt-get install -y git ninja-build  cmake g++ unzip vim
RUN apt-get install -y python-dev python-pip python3-dev python3-pip 
RUN pip3 install --user pynvim
RUN pip3 install --upgrade pip

RUN apt-get -y install ctags tmux  git-core bash-completion curl silversearcher-ag clang-tidy
RUN git clone https://github.com/angeld29/vimconfig.git && cd vimconfig && ./deploy_vim
RUN mkdir utils && git clone --depth 1 https://github.com/junegunn/fzf.git ~/utils/fzf && ~/utils/fzf/install --all
RUN vim -c 'PlugInstall' -c 'qa!' 
RUN vim -c 'UpdateRemotePlugins' -c 'qa!' 


EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

