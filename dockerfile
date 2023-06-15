#It instructs Docker Engine to use official python:3.10 as the base image
FROM python:3.10
#It creates a working directory(app) for the Docker image and container
WORKDIR /app
#It copies the framework and the dependencies for the flaskAPI application into the working directory
COPY requirements.txt .
#It will install the framework and the dependencies in the `requirements.txt` file.
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
#It will copy the remaining files and the source code from the host `flask-api` folder to the `app` container working directory
COPY . .
#It will expose the flaskAPI application on port `8000` inside the container
EXPOSE 3000
#It is the command that will start and run the flaskAPI application container
CMD ["python", "app.py"]
