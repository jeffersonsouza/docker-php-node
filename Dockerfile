FROM node:6-alpine
MAINTAINER Jefferson Souza<hsinfo@gmail.com>

RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories; \
    echo "http://dl-3.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories; \
    echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories; \
    echo "http://dl-5.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk update \
    && apk add --no-cache \
    ca-certificates \
    coreutils \
    curl \
    vim \
    freetype-dev \
    libjpeg-turbo-dev \
    libltdl \
    libmcrypt-dev \
    libpng-dev \
    php7 \
    php7-common \
    php7-ctype \
    php7-json \
    php7-zlib \
    php7-zip \
    php7-xml \
    php7-pdo \
    php7-phar \
    php7-pdo_pgsql \
    php7-pgsql \
    php7-memcached \
    php7-redis \
    php7-iconv \
    php7-mcrypt \
    php7-curl \
    php7-opcache \
    php7-apcu \
    php7-mbstring \
    php7-bcmath \
    php7-dom \
    php7-xmlreader \
    php7-xmlwriter \
    php7-xsl \
    php7-tokenizer \
    php7-simplexml \
    php7-cli && \
    apk del autoconf file g++ gcc binutils isl libatomic libc-dev musl-dev make re2c libstdc++ libgcc binutils-libs mpc1 mpfr3 gmp libgomp && \
    rm -rf /var/cache/apk/*

WORKDIR /build