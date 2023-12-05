# Stage 1: Build stage
FROM python:3.10 AS builder
WORKDIR /app
# Copy only the requirements file to optimize caching
COPY requirements.txt .
# Install dependencies
RUN apt update -y
RUN pip install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt

# Final production image For main
FROM python:3.10-slim
# Set working directory in the container
WORKDIR /app
RUN apt update -y

# Copy the installed dependencies from the builder stage
COPY --from=builder /usr/local/lib/python3.10/site-packages/ /usr/local/lib/python3.10/site-packages/
COPY --from=builder /app /app
# Expose the port if your application listens on a specific port
EXPOSE 8080
# CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
CMD ["python3","main.py"]
# Done

