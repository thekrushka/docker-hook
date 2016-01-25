FROM python:2.7
ADD docker-hook .
ENTRYPOINT ./docker-hook

RUN apt-get install -y python python-dev python-distribute python-pip

CMD python docker-hook.py -t token -c sh ./deploy.sh