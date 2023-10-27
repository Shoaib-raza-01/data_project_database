from sqlalchemy.orm import DeclerativeBase, Mapped, mapped_column
from sqlalchemy import ForeignKey, Text

class Base(DeclerativeBase):
    pass
class User(Base):
    __tablename__ = 'users'
    #defining the columns using the mapped class 
    # which mapes our column name to a particulat datatype

    #next we are using mapped_column to define extra constraints like NOT NULL, Primary Key etc

    id: Mapped[int] = mapped_column(primary_key=True)
    username: Mapped[str] = mapped_column(nullable=False)
    email: Mapped[str]

class Comments(Base):
    __tablename__ = "comments"
    comment_id :Mapped[int]=mapped_column(primary_key=True)

    #creating the foreign key to establish connection between the tables
    user_id: Mapped[int] = mapped_column(ForeignKey('users.id'), nullable=False)
    text: Mapped[str] = mapped_column(Text, nullable=False)