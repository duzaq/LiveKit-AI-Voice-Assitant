# Define a imagem base do Python
FROM python:3.10-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos necessários para o container
COPY app.py .
COPY requirements.txt .
COPY .env .

# Instala as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Define o comando para executar o aplicativo
CMD ["python", "app.py", "start"]
