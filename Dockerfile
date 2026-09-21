FROM python:3.11-slim-bookworm

RUN apt-get update && apt-get install -y \
    libgl1 \
    libglib2.0-0 \
    libsm6 \
    libxrender1 \
    libxext6 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN pip install --no-cache-dir mediapipe==0.10.14 opencv-python numpy

COPY . .

CMD ["python3", "main.py"]