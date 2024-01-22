FROM python:3.11-slim

COPY requirements.txt /app/requirements.txt
COPY main.py /app/main.py

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5555

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5555"]


