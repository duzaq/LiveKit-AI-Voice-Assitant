# Use uma imagem base do Python
FROM python:3.9-slim

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo de requirements para o diretório de trabalho
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante dos arquivos da aplicação para o diretório de trabalho
COPY . .

# Define a variável de ambiente FLASK_APP para o arquivo principal da aplicação
ENV FLASK_APP=main.py

# Comando para executar a aplicação Flask
CMD ["flask", "run", "--host", "0.0.0.0"]
