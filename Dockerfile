# Base image
FROM python:3.10 as build

# Set the working directory
WORKDIR /micro-app

# Copy the requirements file
COPY requirements.txt req.txt

# Install dependencies
RUN pip3 install --no-cache-dir -r req.txt


FROM python:3.10-slim

WORKDIR /micro-app
COPY . .
# Copy the app files
COPY --from=build /micro-app /micro-app/
#COPY ./post_app/app1.py ./post_app/app1.py

EXPOSE 8080
# Expose the port for the Streamlit app1
EXPOSE 7000

# Run the app
# CMD ["./shells/demo.sh"]
#COPY./shells/demo.sh /micro-app
RUN chmod +x ./shells/demo.sh
CMD ["./shells/demo.sh"]




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


