FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN useradd -m clem
USER clem
EXPOSE 4000
CMD ["python", "main.py"]
