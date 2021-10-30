import pika, time, json
from dotenv import dotenv_values
from pymongo import MongoClient

config = dotenv_values(".env")
client = MongoClient(config['MONGODB_ENDPOINT'],
                     username=config['MONGODB_USERNAME'],
                     password=config['MONGODB_PASSWORD'])
db = client.tododb

def queue_process_function(msg):
  #print(" processing")
  print(" [x] Received " + str(msg))

  data_string = msg.decode("utf-8")
  data_string_json = data_string.replace("'", "\"")
  data = json.loads(data_string_json)
  #print(data)

  post_id = db.payments.insert_one(data).inserted_id
  #print()

  #time.sleep(5) # delays for 5 seconds
  print("processing finished " + post_id);
  return;

# Access the CLODUAMQP_URL environment variable and parse it (fallback to localhost)
queue_endpoint = config['AMQP_URL']
params = pika.URLParameters(queue_endpoint)
connection = pika.BlockingConnection(params)
channel = connection.channel() # start a channel
channel.queue_declare(queue=config['QUEUE_WORKLOAD']) # Declare a queue

# create a function which is called on incoming messages
def callback(ch, method, properties, body):
  queue_process_function(body)

# set up subscription on the queue
channel.basic_consume(config['QUEUE_WORKLOAD'],
  callback,
  auto_ack=True)

# start consuming (blocks)
channel.start_consuming()
connection.close()
