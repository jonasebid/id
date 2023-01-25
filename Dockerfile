#FROM python:3-alpine
#WORKDIR /app
#COPY . /app
#RUN pip install pip-upgrader
#RUN pip freeze > requirements.txt
#EXPOSE 3000
#CMD python main.py


FROM python:3.8-slim-buster
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]