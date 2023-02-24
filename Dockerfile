FROM python:3.8-slim

ENV PYTHONFAULTHANDLER=1
ENV PYTHONUNBUFFERED=1
ENV PYTHONHASHSEED=random
ENV PYTHONDONTWRITEBYTECODE 1
ENV PIP_NO_CACHE_DIR=off
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
ENV PIP_DEFAULT_TIMEOUT=100
ENV PIP_ROOT_USER_ACTION=ignore

RUN apt-get update && \n
    apt-get install -y python3 python3-pip python-dev build-essential python3-venv && \n
    python -m pip install --upgrade pip && \n
    pip3 install -r requirements.txt --root-user-action=ignore && \n
    mkdir -p /code
    
ADD . /code
WORKDIR /code



CMD ["bash"]
