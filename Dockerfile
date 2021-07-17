FROM ubuntu
WORKDIR /root

RUN apt update
RUN apt upgrade -y
RUN apt install -y git python python-apt

ADD . .dotfiles

WORKDIR /root/.dotfiles

RUN ./install

CMD [ "/bin/bash" ]