# Stage 1: Build stage
FROM python:3.10 AS builder
WORKDIR /app
# Copy only the requirements file to optimize caching
COPY requirements.txt .
# Install dependencies
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
RUN apt update -y

# Copy the entire project code to the container
Copy templates templates
COPY main.py  .


# Final production image For main
FROM python:3.10-slim

# Set working directory in the container
WORKDIR /app
RUN apt update -y
RUN apt install uvicorn -y

# Copy the installed dependencies from the builder stage
COPY --from=builder /usr/local/lib/python3.10/site-packages/ /usr/local/lib/python3.10/site-packages/
COPY --from=builder /app /app
# Expose the port if your application listens on a specific port
EXPOSE 8080
# CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
CMD ["python3","main.py"]

# Done


## Stage 1: Build stage
#FROM python:3.10 AS builder
#
## Set working directory in the container
#WORKDIR /app
#
## Copy only the requirements file to optimize caching
#COPY requirements.txt .
#
## Install dependencies
#RUN pip install --upgrade pip && pip install -r requirements.txt
#
## Copy the entire project code to the container
#COPY . .
#
#
## Stage 2: Final production image
#FROM python:3.10-slim
#
## Set working directory in the container
#WORKDIR /app
#RUN pip install streamlit==1.24.1
#
## Copy the installed dependencies from the builder stage
#COPY --from=builder /usr/local/lib/python3.10/site-packages/ /usr/local/lib/python3.10/site-packages/
#COPY --from=builder /app /app
#
## Expose the port if your application listens on a specific port
#EXPOSE 7000
#EXPOSE 8000
#EXPOSE 9000
#
#EXPOSE 8080
#EXPOSE 30110
#EXPOSE 30120
#EXPOSE 30130
#
## Copy the shell script into the container
## COPY run.sh /micro-app/run.sh
## COPY main.sh /micro-app/main.sh
## COPY app1.sh /micro-app/app1.sh
## COPY app2.sh /micro-app/app2.sh
## COPY app3.sh /micro-app/app3.sh
#
#
## Copy the shell script into the container
#COPY run.sh /micro-app/run.sh
#COPY main.py /micro-app/main.py
#COPY app1.py /micro-app/app1.py
#COPY app2.py /micro-app/app2.py
#COPY app3.py /micro-app/app3.py
#
#
## Make the shell script executable
## RUN chmod +x /micro-app/run.sh /micro-app/main.sh /micro-app/app1.sh /micro-app/app2.sh /micro-app/app3.sh
#
#
## Specify the command to run the shell script
## CMD ["/micro-app/main.sh","/micro-app/app1.sh","/micro-app/app2.sh","/micro-app/app3.sh"]
#CMD ["/bin/bash", "/micro-app/run.sh", "&"]
#
##CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
##CMD ["streamlit", "run", "--server.port", "7000", "app1.py"]
##CMD ["streamlit", "run", "--server.port", "8000", "app2.py"]
##CMD ["streamlit", "run", "--server.port", "9000", "app3.py"]



