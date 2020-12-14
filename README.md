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

THE SCRIPT JUST GENERATE THE TIME OF CREATION IN THE CONTAINER, 
NOT MORE, IN GENERAL THE INFORMATION ABOUT SYSTEM IS SENSITIVE. 
AND THE HTML PAGE IS NOT INTENDED FOR A PUBLIC USE. 
MAINLY IT IS A TASK TO SEE WHAT WE CAN DO WITH SCRIPTS AND TO GENERATE UNTRIVIAL INFORMATION FLOW.
-> ---------------------------------------------------

Second part is the solution for the exercise 3.3 of the  
Dev Ops With Docker 2020 course of University of Helsinki :   
https://devopswithdocker.com/

Shell script will be produced which will:
1. Download repo with project (with already created Dockerfile for containerization) from GitHub.
2. Publish the project to DockerHub.

Dockerfile for the shell script will be produced which will run the script from within container (the docker will be installed within the container).

The second part is in progress.


