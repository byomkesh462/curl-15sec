# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir requests

# Make port 80 available to the world outside this container (optional)
EXPOSE 80

# Run curl_every_25_seconds.py when the container launches
CMD ["python", "./curl_every_20_seconds.py"]
