from flask import Flask
import app
from app import mnportal

@mnportal.route("/api/python")
def hello_world():
    connection = app.model.get_db()
    cur = connection.execute("SELECT * FROM users")

    data = cur.fetchall()
    return data
    # return "<p>Hello, World!</p>"