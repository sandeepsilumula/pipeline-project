# 1. Use a lightweight Python base image
FROM python:3.11-slim

# 2. Set the working directory
WORKDIR /app

# 3. Install dependencies FIRST (Optimizes Docker caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the rest of the application code
COPY . .

# 5. Document the port the app runs on
EXPOSE 5000

# 6. Command to run the application
CMD ["python", "app.py"]
