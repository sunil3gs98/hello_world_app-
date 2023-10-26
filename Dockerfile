# Base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

COPY . /app

# Copy the requirements file
COPY requirements.txt .

# Installing  the project dependencies
RUN pip install -r requirements.txt

# Copy the application code into the container
#COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
