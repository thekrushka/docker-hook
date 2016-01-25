FROM python:2.7
ADD docker-hook .
ENTRYPOINT ./docker-hook

# install dependencies
RUN apt-get -qq update
RUN apt-get install -y python python-pip
RUN pip install requests

CMD sudo python docker-hook -t token -c bash ./deploy.sh