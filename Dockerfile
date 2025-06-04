FROM python:3.11-slim

WORKDIR /app

COPY . .  # Inclui todos os arquivos (inclusive .env)

RUN pip install --no-cache-dir -r requirements.txt

COPY start.sh .
RUN chmod +x start.sh

EXPOSE 8080

CMD ["./start.sh"]
