#### Shell script -> Generate HTML file -> Dockerize with NGINX server

This is actually project for another project. 
Here the sh_html.sh script is used to generate html file. 
The html file may contain some information about 
operating system to the moment of generation: in this case it is just the time of the html file creation. 

The html file is created like this: 
```~>/shell_for_html$ ./sh_html.sh > index.html```

The shell script sh_shell.sh is 'conteinerized' with NGINX server 
(and ubuntu:16.04). 

After building docker image with :  

```~>/shell_for_html$ sudo docker build -t builder . ```  

we can run docker container with :   

``` ~>/shell_for_html$ sudo docker run -d -p 80:80 builder ```  

and get the web page at localhost:80 (as example).

This is the FIRST part of the project : Project 1.
..................................................


