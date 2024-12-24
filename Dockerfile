FROM python:3.9-slim-buster
WORKDIR /app

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_RUN_HOST=app.py

EXPOSE 5000
CMD ["python", "app.py"]