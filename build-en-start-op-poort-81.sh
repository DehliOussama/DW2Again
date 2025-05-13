docker build -t dw2again-apache .

docker run -d -p 81:80 --name dw2again-container dw2again-apache

