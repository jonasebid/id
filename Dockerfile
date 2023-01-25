FROM python:3-alpine
WORKDIR /app
COPY . /app
RUN pip install pip-upgrader
RUN pip freeze > requirements.txt
EXPOSE 3000
CMD python main.py