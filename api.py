from flask import Flask
from flask import url_for

app = Flask(__name__, static_url_path='/api')

@app.route('/api')
def historico():
    return url_for('static', filename='data.json')

if __name__ == '__main__':
    app.run()
