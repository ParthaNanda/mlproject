FROM python:3.7
WORKDIR /app
COPY . .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ENTRYPOINT [ “python” ]
CMD [ “app.py” ]
