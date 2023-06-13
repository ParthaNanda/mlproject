FROM python:3.7
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . .
ENTRYPOINT [ “python” ]
CMD [ “app.py” ]
