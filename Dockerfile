FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY main.py .

ENV PORT=8080
ENV PYTHONUNBUFFERED=1
ENV HOSPEDIN_EMAIL=pyetrosoares0910@gmail.com
ENV HOSPEDIN_PASSWORD=123Senha
ENV HOSPEDIN_ACCOUNT_ID=pyetrosoares0910@gmail.com

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 main:app
