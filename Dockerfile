FROM ubuntu:14.04

USER root

RUN apt-get update && apt-get install -y \

    software-properties-common

RUN add-apt-repository universe

RUN apt-get update && apt-get install -y \

    apache2 \

    curl \

    git \

    libapache2-mod-php5 \

    php5 \

    php5-mcrypt \

    php5-mysql \

    python3.4 \

    python3-pip

RUN apt-get install -y ffmpeg

RUN curl -fssL https://deb.nodesource.com/setup_17.x | sudo -E bash - && sudo apt-get install nodejs -y && npm i -g npm

RUN git clone https://github.com/notreallyshikhar/YukkiMusicBot

RUN git clone https://github.com/yamtargokboru/YukkiMusicBot

RUN cd YukkiMusicBot

RUN cp .env ../YukkiMusicBot/.env

RUN cd YukkiMusicBot

RUN pip3 install -U -r requirements.txt

CMD ["bash", "start"]
