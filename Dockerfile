FROM ubuntu:latest
MAINTAINER kangis "kangis@ji-in.com"
RUN apt-get update -y
RUN apt-get install -y python3 python3-pip python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]