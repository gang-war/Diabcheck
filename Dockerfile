FROM python:3.8-slim-buster

WORKDIR /python-docker
# RUN apt-get install libfontconfig1-dev 


COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip install scikit-learn
COPY . .


EXPOSE 5000
CMD [ "gunicorn", "-b" , "0.0.0.0:5000", "app:app"]