FROM mcr.microsoft.com/playwright/python:v1.60.0-jammy

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir playwright
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

CMD ["python", "app.py"]
``
