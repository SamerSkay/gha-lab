FROM python:3.11-slim

WORKDIR /app

# Install dependencies first (bra för cache)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Default command (kan overridas i CI)
CMD ["pytest", "-q"]
