FROM python:3.8-slim-buster

WORKDIR /python-docker
# RUN apt-get install libfontconfig1-dev 

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .

EXPOSE 8080
CMD [ "gunicorn", "-b" , "0.0.0.0:8080", "app:flask/app"]