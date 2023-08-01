# Step 1: Containerize Lambda Code

# Use the official Python image as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the Lambda code to the container
COPY lambda_function.py .

# Install any dependencies needed for your Lambda function
# For example, if you have a requirements.txt file:
# COPY requirements.txt .
# RUN pip install -r requirements.txt

# Set the command to execute your Lambda function
CMD ["python", "lambda_function.py"]
