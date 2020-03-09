FROM    python:3.7-slim
ENV     LANG=C.UTF-8

COPY    requirements.txt /tmp/requirements.txt
RUN     pip3 install -r /tmp/requirements.txt

COPY    . /srv/
WORKDIR /srv/app

CMD     python3 manage.py runserver 0:80
EXPOSE  80