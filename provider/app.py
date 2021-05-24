from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello_world():
  return 'Provider Hello from Docker within PyCharm!'

@app.route('/public')
def hello_public():
  return 'Provider Hello from public!'

@app.route('/homepage')
def hello_homepage():
  return 'Provider Hello from homepage! You need logged in to access this page'
if __name__ == '__main__':
  app.run(host='0.0.0.0', port=5000)