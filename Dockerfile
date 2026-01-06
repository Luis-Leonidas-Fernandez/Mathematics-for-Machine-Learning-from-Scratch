FROM python:3.11-slim

ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y \
    git \
    wget \
    build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

RUN pip install --no-cache-dir --upgrade pip

# Instalar dependencias base desde requirements
COPY requirements.txt /workspace/requirements.txt
RUN pip install --no-cache-dir -r /workspace/requirements.txt

# PyTorch CPU desde el índice oficial (más estable/reproducible)
RUN pip install --no-cache-dir --index-url https://download.pytorch.org/whl/cpu \
    "torch==2.9.1" \
    "torchvision==0.24.1" \
    "torchaudio==2.9.1"

# Smoke test (detecta problemas en build, no cuando estés estudiando)
RUN python - <<'PY'
import sys
import numpy as np
import pandas as pd
import sklearn
import torch
print("Python:", sys.version.split()[0])
print("NumPy:", np.__version__)
print("Pandas:", pd.__version__)
print("sklearn:", sklearn.__version__)
print("Torch:", torch.__version__)
try:
    import tensorflow as tf
    print("TF:", tf.__version__)
except Exception as e:
    print("TF import failed:", repr(e))
PY

EXPOSE 8888

CMD ["sh", "-c", "jupyter lab --ip=0.0.0.0 --port=8888 --allow-root --no-browser --IdentityProvider.token= --ServerApp.disable_check_xsrf=True --ServerApp.allow_origin='*' --notebook-dir=/workspace"]
