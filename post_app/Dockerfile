FROM python:3.9-slim
# Set the working directory
WORKDIR /app1
# Copy the requirements file
COPY requirements.txt .
RUN apt update
RUN pip install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt
# Expose the port for the Streamlit app
EXPOSE 7000
# Run the app
CMD ["streamlit", "run", "--server.port", "7000", "app1.py"]