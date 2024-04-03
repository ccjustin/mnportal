from flask import Flask
from app import mnportal
import app

@mnportal.route("/api/python")
def hello_world():
    connection = app.model.get_db()
    cur = connection.execute("SELECT * FROM users")

    data = cur.fetchall()
    return data
    # return "<p>Hello, World!</p>"