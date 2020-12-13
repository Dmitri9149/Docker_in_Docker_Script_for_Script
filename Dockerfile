FROM ubuntu:16.04
RUN apt-get update && apt-get install nginx -y
WORKDIR /usr/app
COPY ./sh_html.sh .
RUN chmod +x ./sh_html.sh > /var/www/html/index.html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]

