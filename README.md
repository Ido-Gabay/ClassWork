# ClassWork - אורי צבי, אוהד לזר, עידו גבאי, יובל גולדווסר, יוסי קריחלי, אגם מורביה
A: our docker images are python and alpine because alpine is the smallest docker image and we need python to run a python file. the dockerfile is:
FROM python:3.8-alpine
COPY myPythonScript.py .
CMD ["python3", "myPythonScript.py"]

B: the python code of myPythonScript.py is:
num = int(input("enter a number: "))
name = input("enter your name: ")
for i in range(num):
    print(name)

we updated the container and it works

C: the requirement in the requirements file is flask
click==8.1.3
Flask==2.0.2
itsdangerous==2.1.2
Jinja2==3.1.2
MarkupSafe==2.1.3
Werkzeug==2.3.6

D: We need those requirements to run the flask server

from flask import Flask, render_template
import os

app = Flask(_name_)


@app.route('/')
def home():
    return "YO"


if _name_ == "_main_":
    app.run(debug=True,host="0.0.0.0")
