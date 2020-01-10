FROM ubuntu:latest
MAINTAINER kangis "kangis@ji-in.com"
RUN apt-get update -y
RUN apt-get install -y python3 python3-pip python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]