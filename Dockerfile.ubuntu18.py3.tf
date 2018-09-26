FROM ubuntu:18.04


# install dependencies from debian packages

RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y software-properties-common vim
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update

RUN apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv
RUN apt-get install -y git

# update pip
RUN python3.6 -m pip install pip --upgrade
RUN python3.6 -m pip install wheel

# install dependencies from python packages
RUN pip --no-cache-dir install \
    numpy \
    scipy \
    pandas \
    matplotlib \
    scikit-learn \
    statsmodels \
    tensorflow \
    keras
