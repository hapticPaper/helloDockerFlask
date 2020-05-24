FROM python:3.7

ENV FLASK_HOST=::
ENV FLASK_PORT=8080

LABEL author="rubenstein.ian@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]



