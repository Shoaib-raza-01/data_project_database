from sqlalchemy import create_engine, text
# from sqlalchemy.orm import sessionmaker

def create_db():
    engine = create_engine("postgresql://shoaib:shoaib123@localhost/postgres", echo=True)
    
    with engine.connect() as conn:
        res = conn.execute(text('CREATE DATABASE Alchemy_db'))
        print(res.all())

if __name__ == "__main__":
    create_db()

