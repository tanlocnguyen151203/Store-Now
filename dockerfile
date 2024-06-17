# Sử dụng image cơ sở có chứa PHP và Apache
FROM php:7.4-apache

# Cài đặt các extension PHP cần thiết
RUN docker-php-ext-install mysqli

# Copy tất cả các file trong thư mục hiện tại vào /var/www/html trong container
COPY . /var/www/html

# Mở cổng 80 cho truy cập web
EXPOSE 80
