FROM python:3.9-slim-buster

RUN apt-get update && apt-get install -y git && \ 
    git clone https://github.com/dky815/PythonDemo.git && \
    cd PythonDemo && \
    pip install --no-cache-dir -r requirements.txt

WORKDIR /PythonDemo

EXPOSE 5000

CMD ["gunicorn", "-b", "0.0.0.0:5000", "run:app"]