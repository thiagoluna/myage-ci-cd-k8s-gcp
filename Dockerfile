#Local da imagem a ser usada
From wyveo/nginx-php-fpm:latest

#Diretório de trabalho
WORKDIR /usr/share/nginx

#Remover pasta html do nginx
RUN rm -rf /usr/share/nginx/html

#Copiar conteúdo do projeto para a pasta nginx do conainer
copy . /usr/share/nginx

#Instalar o composer / mover o composer para a pasta bin
#criar link simbólico da pasta public para html
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    composer install && \
    ln -s public html && \
    vendor/bin/phpunit tests/App/AgeTest.php