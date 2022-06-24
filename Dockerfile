FROM python:3.9-slim

COPY requirements.txt requirements.txt

RUN apt-get update 
RUN apt-get install -y pandoc calibre 
RUN pip3 install -r requirements.txt

COPY src/ src/
COPY config/ config/

CMD ["python3", "src/news2kindle.py"]
