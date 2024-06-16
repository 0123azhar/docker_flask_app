FROM python:3.12.4

WORKDIR /app

COPY ./requirements.txt /app
RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY . /app

CMD [ "flask", "--app", "app", "--debug", "run", "-h", "0.0.0.0", "-p", "8080"]
# command to run flask dev server is: flask --app app --debug run -h 0.0.0.0 -p 8080