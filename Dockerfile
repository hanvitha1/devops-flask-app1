# Use an official Python image
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code into the container
COPY . .

# Command to run the Flask app
CMD ["python", "app.py"]
