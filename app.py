import os
import logging
from flask import Flask

app = Flask(__name__)

logging.basicConfig(level=logging.INFO)

@app.route("/")
def home():
    app.logger.info("Home endpoint hit!")
    raise Exception("This is a test error for Error Reporting!")
    return "Hello World - CI/CD Test Deployment!"


if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8080))
    app.run(host="0.0.0.0", port=port)
