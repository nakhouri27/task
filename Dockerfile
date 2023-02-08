FROM python:3.8-alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN pip install flask
RUN pip freeze > runtime.txt
RUN pip install -r runtime.txt
EXPOSE 5000
CMD ["python", "web.py"]
