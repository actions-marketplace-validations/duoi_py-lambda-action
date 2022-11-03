FROM python:3.9
ARG PIPENV_VENV_IN_PROJECT=1 

RUN apt-get update
RUN apt-get install -y jq zip
RUN pip install awscli
RUN pip install pipenv

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
