# Start with the base image
# FORM <image>:<tag>
FROM pytorch/pytorch:1.10.0-cuda11.3-cudnn8-runtime

# Set the root directory
# WORKDIR <root_dir>
WORKDIR /

# Install useful programs
# RUN <command>
RUN apt update && apt install -y  \
    git \
    vim \
    tmux \
    wget && \
    apt clean

# Install Python packages from a requirements file
# COPY <src> <dest>
COPY requirements.txt /

# RUN <command>
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

