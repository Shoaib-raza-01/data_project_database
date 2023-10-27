import psycopg2
from sqlalchemy import create_engine

db_username = "shoaib"
db_password = "shoaib123"
db_host = "localhost"
db_name = "Alchemy_db"
default_connection_string = f"postgresql://{db_username}:{db_password}@{db_host}/postgres"
conn = psycopg2.connect(default_connection_string)
conn.set_isolation_level(0)

cursor = conn.cursor()

cursor.execute(f"CREATE DATABASE {db_name}")

cursor.close()
conn.close()


new_db_connection_string = f"postgresql://{db_username}:{db_password}@{db_host}/{db_name}"
new_engine = create_engine(new_db_connection_string)
