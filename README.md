# symfony-frankenphp

## How to install
```shell
mkdir symfony-frankenphp
cd symfony-frankenphp
docker build --no-cache -t symfony-frankenphp .
docker run -p 8080:8080 symfony-frankenphp
```
# Symfony + FrankenPHP

This repository demonstrates how to serve a Symfony application using [FrankenPHP](https://frankenphp.dev/), a modern PHP server that eliminates the need for Nginx or Apache.

## Quick Start

1. Install PHP dependencies:
```shell
composer install
```
2. Build and run the Docker container:
```shell
docker build -t symfony-frankenphp .
docker run -p 8080:80 symfony-frankenphp
```
3. Open your browser at [http://localhost:8080](http://localhost:8080).

## About FrankenPHP

FrankenPHP is a PHP application server that integrates PHP directly into the web server, simplifying deployment and boosting performance. For details, visit [https://frankenphp.dev/](https://frankenphp.dev/).

## Comparison: Traditional Web Server + PHP-FPM vs. FrankenPHP

| **Feature**                     | **Web Server + PHP-FPM**                  | **FrankenPHP**                           |
|----------------------------------|-------------------------------------------|------------------------------------------|
| **Setup Complexity**            | Requires separate web server (e.g., Nginx) and PHP-FPM. | Single server configuration.             |
| **Performance**                 | Communication overhead between server and PHP-FPM. | Directly serves PHP without overhead.    |
| **Flexibility**                 | Web server configuration for routing and optimizations. | Full control over application serving.   |
| **Ease of Use**                 | Manages both web server and PHP-FPM.       | Simplifies deployment with one server.   |
| **Best Use Case**               | Large apps with complex web server needs. | Modern apps valuing simplicity and speed. |

This setup replaces Nginx with FrankenPHP, letting you directly serve your Symfony application. Enjoy the streamlined process!
