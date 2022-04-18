FROM python:3.8.4-buster
RUN apt-get -y update
RUN apt-get install -y git vim emacs zsh git-core
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

COPY [".", "/app"]

WORKDIR /app
RUN /usr/local/bin/python3 -m pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt

CMD ["python3", "--version"]