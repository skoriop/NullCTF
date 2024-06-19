FROM python:3.7.8-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apk add gcc python3-dev musl-dev

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY nullctf.py .
COPY cogs .
COPY help_info.py .
COPY magic.json .
COPY config_vars.py .

CMD ["python", "nullctf.py"]