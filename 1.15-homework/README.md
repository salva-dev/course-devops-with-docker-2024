# dwd-demosite

This project is created for the exercise 1.15 (homework) of the course ‘Devops with docker’.
It consists of a Drupal website, specifically the Umami demo site that is often used for testing or developing in Drupal.
I have chosen a Drupal website to help me in my work that we manage some Drupal websites.
The Dockerhub url of repo with final image is https://hub.docker.com/r/salvahappydev/dwd-demosite


# How run the application
For run the application, you must have docker installed and run the image, p.e.:
```
# Change port 8080 if you need it
# If you user user 33 for run contaniner as non-root user, you must add the user an dgroup in your system. 
docker run -p 8080:80 --user 33:33 salvahappydev/dwd-demosite
```

You can ignore if you don't mind run as root the container
```
# Change port 8080 if you need it
docker run -p 8080:80 salvahappydev/dwd-demosite
```
And open in broser http://localhost:8080. Umami site should be displayed.


# Build the Dockerfile

For build the Dockerfile to generate the image run the next command
```
# Be sure you are in the folder 1.15-homework
docker build . -t dwd-demosite
```

