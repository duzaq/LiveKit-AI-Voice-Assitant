# Use uma imagem base do Python
FROM python:3.9-slim

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo de requirements para o diretório de trabalho
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o arquivo Python para o diretório de trabalho
COPY . .

# Comando para executar o script Python
CMD ["python", "main.py"]