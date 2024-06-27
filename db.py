import os
from dotenv import load_dotenv
from pymongo import MongoClient

load_dotenv()

client = MongoClient(os.getenv("DB_URL"))

ctfdb = client['ctftime']
ctfs = ctfdb['ctfs']
teamdb = client['ctfteams']
serverdb = client['serverinfo']