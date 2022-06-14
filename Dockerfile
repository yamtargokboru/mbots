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

RUN git clone https://github.com/notreallyshikhar/YukkiMusicBot

RUN git clone https://github.com/yamtargokboru/mbots

RUN cd mbots

RUN cp .env ../YukkiMusicBot/.env

RUN cd

RUN cd YukkiMusicBot

WORKDIR ./

RUN pip3 install -U -r requirements.txt

CMD ["bash", "start"]


