#FROM python:3.10 AS build
#
#WORKDIR /pyapp
#
#COPY requirements.txt req.txt
#
#RUN pip install -r req.txt
#
#FROM python:3.10-slim
#
#WORKDIR /pyapp
#
#COPY --from=build /root/.local /root/.local
#
#COPY . .
#
#EXPOSE 8000
#
#CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]


## Base image
#FROM python:3.9
#
## Set the working directory
#WORKDIR /app
#
## Copy the requirements file
#COPY requirements.txt .
#
## Install dependencies
#RUN pip install --no-cache-dir -r requirements.txt
#
## Copy the app files
#COPY app1.py .
#
## Expose the port for the Streamlit app
#EXPOSE 7000
#
## Run the app
#CMD ["streamlit", "run", "--server.port", "7000", "app1.py"]