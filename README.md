1. Project creation
 For this docker assignment i chose one previous assignment which is "python-micro-services".

2. Github Initialisation
 Then i initialise the project for git.
 
3. Dockerize Application
 Then I create Dockerfile for every services like fronend(main) and backend(app1,app2 &    app3).
 
 4. Docekr Hot reloading for local dev
  
 
 5. Use multistage build
  In every application both frondend and backend, i create Dockerfile which is multistage (for main.py)
  
6. Separate  credentials for local and production dev. 
 Seperate crendential for local dev and production
 In project root there is a directory called shells, in this directory there are two shell scripts is there named by local_run.sh and prod_run.sh. By running those script from project root, user can run the whole applicaton both local and production.

7. Local Docker Image
 In the shells directory, there is a script file called "create_image.sh", by run this script user can create docker images for every applicaton in local machine.

8. Pull/Push from docker
 If the user don't have the images in local machine, by running the "prod_run.sh" from shells directory, the composer can pull the images from dockerhub and run the application.

9. Log formation
 For this task, when user run the application, logs of every micro-app will be saved in local machine.
 
10. Add seeding data for the application
  In the docker-compose.yml file, by adding the mysql database into the docker container is compete this requrement.
  
11. Warp tool
  In shells directory there is a file called "package_install.sh", this shell script is ful-fill this requirement.
 
12. Bonus
     
  
