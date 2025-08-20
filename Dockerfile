# Use Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /appflask

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Expose port 8080
EXPOSE 8081

# Run dashboard.py
CMD ["python", "app.py"]
