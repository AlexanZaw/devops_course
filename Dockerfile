FROM python:3

RUN apt-get update && apt-get install -y libpq-dev gcc

RUN pip install --upgrade pip

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 80

CMD ["python", "app.py"]