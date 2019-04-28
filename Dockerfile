FROM python:3

ADD pidigit.py /

RUN apt-get update

RUN apt-get -y install python3 python3-dev python3-pip build-essential libgmp-dev libmpfr-dev libmpc-dev

RUN pip install gmpy2

RUN pip install pystrich

# Exposing Ports
EXPOSE 5035

CMD [ "python", "./pidigit.py" ]
