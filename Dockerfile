# Stage 1: Build stage
FROM python:3.10 AS builder

# Set working directory in the container
WORKDIR /app

# Copy only the requirements file to optimize caching
COPY requirements.txt .

# Install dependencies
# RUN pip install --upgrade pip && pip install -r requirements.txt
RUN pip install --upgrade pip && pip install streamlit==1.24.1 && pip install -r requirements.txt
# Copy the entire project code to the container
COPY . .

# Perform any additional build steps if necessary (e.g., compiling assets, etc.)
# RUN some_build_command

# Stage 2: Final production image
FROM python:3.10-slim

# Set working directory in the container
WORKDIR /app

# Copy the installed dependencies from the builder stage
COPY --from=builder /usr/local/lib/python3.10/site-packages/ /usr/local/lib/python3.10/site-packages/
COPY --from=builder /app /app

# Set environment variables if needed
# ENV SOME_ENV_VAR="some_value"

# Expose the port if your application listens on a specific port
EXPOSE 7000
EXPOSE 8000

# Run the app
# Copy the shell script into the container
COPY new.sh /micro-app/new.sh

# Make the shell script executable
RUN chmod +x /micro-app/new.sh

# Specify the command to run the shell script
CMD ["/micro-app/new.sh"]






# My Docker

#FROM python:3.10 AS build
#WORKDIR /pyapp
#COPY requirements.txt .
#RUN pip install -r requirements.txt
#FROM python:3.10-slim
#WORKDIR /pyapp
#COPY requirements.txt .
#RUN pip install -r requirements.txt
## COPY --from=build /usr/lib/python3.8/ /usr/lib/python3.8/
#COPY --from=build /pyapp /pyapp/
#COPY . .
#EXPOSE 8000
#CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]


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


