FROM python:3.11-slim

WORKDIR /app

# Prevent Python from writing pyc files & buffering logs
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose the app port (change if needed)
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
