import pika, json, base64
from dotenv import dotenv_values

config = dotenv_values(".env")

# QUEUE CONFIG
queue_endpoint = config['AMQP_URL']
params = pika.URLParameters(queue_endpoint)
params.socket_timeout = 5

def add_new(payment_data):
    connection = pika.BlockingConnection(params)
    channel = connection.channel()
    channel.queue_declare(queue=config['QUEUE_WORKLOAD'])
    for item in payment_data:
        channel.basic_publish(exchange='', routing_key=config['QUEUE_WORKLOAD'], body=str(item))
    
    connection.close()
