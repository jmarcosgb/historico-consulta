FROM python:3.5-alpine

RUN mkdir -p /home/service
COPY . /home/service
WORKDIR /home/service

RUN pip3 install -r requirements.txt

EXPOSE 8000
CMD ["gunicorn", "--config=gunicorn.py", "api:app"]