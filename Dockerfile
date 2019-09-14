FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

CMD ["gunicorn", "-b", ":8080", "main:APP"]

# docker build --tag jwt-api-test .
# docker run -p 80:8080 --env-file env_file jwt-api-test