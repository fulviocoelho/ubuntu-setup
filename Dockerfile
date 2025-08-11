# Usa a imagem oficial do Apache como base
FROM httpd:2.4

# Remove o index.html padrão do Apache
RUN rm -f /usr/local/apache2/htdocs/index.html

# Copia os arquivos da pasta scripts/ para o diretório padrão do Apache
COPY scripts/ /usr/local/apache2/htdocs/
