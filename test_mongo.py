import pymongo
import urllib.parse

username = "hungdv"
password = "hung123@a"
host = "cluster0.nyjbria.mongodb.net"
database = "test"

uri = "mongodb+srv://{}:{}@{}/{}?retryWrites=true&w=majority".format(
    urllib.parse.quote_plus(username),
    urllib.parse.quote_plus(password),
    host,
    database
)
client = pymongo.MongoClient(uri)

print(uri)

result = client["chatgpt_telegram_bot"]["user"].find()

for i in result:
    print(i)