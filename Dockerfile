FROM python:3.8

WORKDIR /app
COPY requirements.txt requirements.txt

RUN pip install --upgrade pip && pip install -r requirements.txt 

COPY . .

ENTRYPOINT ["python"]
CMD ["main.py"]