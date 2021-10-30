FROM python:3.6-alpine
ADD . /consumer
WORKDIR /consumer
RUN pip3 install -r requirements.txt
ENV PYTHONUNBUFFERED=1
CMD ["python", "./consumer/consumer.py"]