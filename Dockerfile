# Imagem base do Python
FROM python:3.10-slim

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia apenas o arquivo de dependências
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo o código (inclui app.py e pasta db/)
COPY . .

# Expõe as portas solicitadas
EXPOSE 8000
EXPOSE 8080
EXPOSE 80
EXPOSE 443

# Comando de inicialização
CMD ["python", "app.py"]
