
# Use the official Python image.
FROM python:3.8-slim

# Set the working directory.
WORKDIR /app

# Copy the requirements file and install dependencies.
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the application code to the container.
COPY . .

# Set environment variable for Flask.
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port Flask will run on.
EXPOSE 5000

# Run the Flask application.
CMD ["flask", "run"]

