from flask import Flask

app = Flask(__name__)


@app.route("/")
def home():
    return "Hello from GCP CI/CD Pipeline!"


import os

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8080))
    app.run(host="0.0.0.0", port=port)
    