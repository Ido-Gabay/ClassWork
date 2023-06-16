FROM python:3.8-alpine
WORKDIR /app
COPY myPythonScript.py .
CMD ["python","./myPythonScript.py"]
