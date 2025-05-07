FROM python:3.10.16-alpine3.21

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY alert-router.py .

CMD ["uvicorn", "alert-router:app", "--host", "0.0.0.0", "--port", "8000"]