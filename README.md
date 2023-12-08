1. Project creation  
 1.1 For this docker assignment i chose one previous assignment which is "python-micro-services".

2. Github Initialisation  
 2.1 Then i initialise the project for git.
 
3. Dockerize Application  
 3.1 Then I create Dockerfile for every services like fronend(main) and backend(app1,app2 &    app3).
 
4. Docekr Hot reloading for local dev  
  4.1 
 
5. Use multistage build  
  5.1 In every application both frondend and backend, i create Dockerfile which is multistage (for main.py)
  
6. Separate  credentials for local and production dev  
 6.1 Seperate crendential for local dev and production
 In project root there is a directory called shells, in this directory there are two shell scripts is there named by local_run.sh and prod_run.sh. By running those script from project root, user can run the whole applicaton both local and production.

7. Local Docker Image  
 7.1 In the shells directory, there is a script file called "create_image.sh", by run this script user can create docker images for every applicaton in local machine.

8. Pull/Push from docker  
 8.1 If the user don't have the images in local machine, by running the "prod_run.sh" from shells directory, the composer can pull the images from dockerhub and run the application.

9. Log formation  
 9.1 For this task, when user run the application, logs of every micro-app will be saved in local machine.
 
10. Add seeding data for the application  
  10.1 In the docker-compose.yml file, by adding the mysql database into the docker container is compete this requrement.
  
11. Warp tool  
  11.1 In shells directory there is a file called "package_install.sh", this shell script is ful-fill this requirement.
 
12. Bonus  


---To run the application in your local machine make sure you have mysql server and import the dump.sql on your mysql server with the crediential on it, as shows on local_dev file. Then run the local-run.sh script. Before run the script file make sure you change your ip on the local_env filr.---  

---To run the application through the docker composer file, you just need to run the "prod-run.sh" script filr from shells directory.---  
  
  --For logs, you need to create a directory name with "Local_Logs" in your project root, then three logs files will on it and all the logs will generate on this files.  
  

     
  
