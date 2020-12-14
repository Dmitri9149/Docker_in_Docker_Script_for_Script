FROM ubuntu
RUN apt-get update
RUN apt-get install --no-cache nginx -y
WORKDIR /usr/app
COPY ./sh_html.sh .
RUN chmod +x sh_html.sh
RUN ./sh_html.sh > /var/www/html/index.html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]

