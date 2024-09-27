# Use the official Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 to the outside world
EXPOSE 5000

# Define environment variable for Flask
ENV FLASK_APP=example_4.py
ENV FLASK_RUN_HOST=0.0.0.0

# Command to run the Flask app
CMD ["flask", "run"]
