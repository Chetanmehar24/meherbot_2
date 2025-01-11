# Base image with Python 3.10
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app/

# Install ffmpeg and other dependencies
RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    python3-pip \
    && apt-get clean

# Alternatively, you can directly install moviepy if not in requirements.txt
RUN pip3 install --no-cache-dir moviepy

RUN pip3 install --no-cache-dir -r requirements.txt

# Alternatively, if you want to install moviepy directly, you can do it like this:
# RUN pip3 install moviepy

# Command to run the bot
CMD ["python3", "bot.py"]
