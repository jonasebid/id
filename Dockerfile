FROM python:3-alpine3.15
WORKDIR /app
COPY . /app
RUN run: pip install --upgrade pip --pip install -r requirements.txt
EXPOSE 3000
CMD python .index.py