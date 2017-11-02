FROM python:3.6

WORKDIR /usr/src/application

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./src .

CMD ["python", "./main.py"]