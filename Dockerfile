# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /opt
WORKDIR /opt

# Install Flask
RUN pip install flask

# Copy the app.py file into the container at /opt
COPY app.py /opt/

# Expose the port that Flask will run on
EXPOSE 8080

# Set the environment variable
ENV FLASK_APP=/opt/app.py

# Command to run the application
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
