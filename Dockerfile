# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy code
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
