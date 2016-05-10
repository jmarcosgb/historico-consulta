FROM python:3.5-alpine

RUN mkdir -p /home/service
COPY . /home/service
WORKDIR /home/service

RUN pip3 install -r requirements.txt

EXPOSE 80
CMD ["gunicorn", "api:app"]