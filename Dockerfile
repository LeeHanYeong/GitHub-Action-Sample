FROM    python:3.7-slim
ENV     LANG=C.UTF-8

RUN     apt -y update && apt -y install git
COPY    requirements.txt /tmp/requirements.txt
RUN     pip3 install -r /tmp/requirements.txt

COPY    . /srv/
WORKDIR /srv

CMD     python3 app/manage.py runserver 0:80
EXPOSE  80
