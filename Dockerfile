# Use an official Python runtime as a parent image
FROM python:2.7-slim
#RUN apt-get install python-pip

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN pip install -r requirements.txt

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define environment variable
#ENV NAME App

# Run app.py when the container launches
CMD ["python", "final.py"]
