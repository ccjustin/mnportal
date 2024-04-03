from flask import Flask
from app import mnportal
import app

def get_team(team:str):
    '''Return a list of team members.'''

def get_projects(team:str):
    '''Return a list of the team's projects.'''

def get_officers():
    '''Return all columns on all officers.'''

def get_teams():
    '''Return names of all the teams.'''

@mnportal.route("/api/python")
def hello_world():
    '''Basic functionality test.'''
    connection = app.model.get_db()
    cur = connection.execute("SELECT * FROM users")

    data = cur.fetchall()
    return data
    # return "<p>Hello, World!</p>"