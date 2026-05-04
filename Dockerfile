FROM python:3.9-slim

RUN apt-get update && apt-get install -y g++ gdb

RUN apt-get update && apt-get install -y time

WORKDIR /app
COPY . /app

RUN pip install fastapi uvicorn pydantic

CMD ["uvicorn", "server:app", "--host", "0.0.0.0", "--port", "8000"]