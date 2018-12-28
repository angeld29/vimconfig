FROM ubuntu-mycfg

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN mkdir /root/.ssh && chmod 700 /root/.ssh
RUN echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEA2RBc80Ao/mqXNqgnNzPv8ITEJsJa8lwlTZ2jy9qWUZ86+LVBGA8riGP/ZAkxuHKRklWwla4XzDzZ/9zVRJ7KkyBEoXXIOY5nLuMeyblvvzbmY4myNlR95HLPWV6iHaYEKzozal0mrskAmTvYPekYKC6S1O2DIrnkxpACzJSY5gaMGx+zMz6VFuIeVimYPl/GJIFFLbAe6wIO/F7fqrSM5FXfVyS44goBAhqWMjBkVOSBzn6ARfJtdqz2TWeY4etE4CpAvgBy1Q7YA/eTOxfiw/7BzMTzTebO408sj6Hr8yu1mH4B20WA5Mt3DF0a+oNXHpuMLiFPHcEh+owO1vAo8Q== rsa-key-20161115' > /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]