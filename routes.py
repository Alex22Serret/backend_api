# api/routes.py

from . import app

@app.route('/')
def home():
    return 'Hello, World!'
