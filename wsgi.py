from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "<h1 style='color:blue'>Hello There! Let me see how this thing updates now</h1>"

if __name__ == "__main__":
    app.run(host='0.0.0.0')
