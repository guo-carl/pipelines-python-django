FROM django

WORKDIR /app

COPY . .

RUN python -m pip install --upgrade pip setuptools wheel django
RUN python ./manage.py migrate
RUN python ./manage.py startapp helloapp
EXPOSE 8000
ENTRYPOINT ["python", "./manage.py", "runserver"]