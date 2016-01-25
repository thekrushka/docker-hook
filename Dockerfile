FROM python:2.7
ADD docker-hook .
ENTRYPOINT ./docker-hook

# install dependencies
RUN apt-get -qq update
RUN apt-get install -y python python-pip

CMD python docker-hook.py -t token -c sh ./deploy.sh