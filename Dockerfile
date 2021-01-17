FROM composer:2

COPY composer.json composer.lock ./

RUN composer install

COPY cli.php ./
COPY src ./src/

RUN php cli.php download:single-html
