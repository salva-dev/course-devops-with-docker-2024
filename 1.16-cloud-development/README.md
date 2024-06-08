# Exercise 1.16

I've chosen my own image of excercise 1.15.
Dockerhub url is: https://hub.docker.com/repository/docker/salvahappydev/dwd-demosite
Url of image deployed is https://dwd-demosite.onrender.com/

# How deploy in render.com

These are the steps I have followed:
- I created an account on render.com linked to my github account.
- I created a new web service (step-1.png)
- I selected build an deploy from git repository (step-2.png)
- I connected with the repo of Dockerfile and files (step-3.png) ( It's the same as exercise 1.15 https://github.com/salva-dev/dwd-demosite )
- I selected free instance (step-4.png)
- Finally (step-5-build-deployed.png), render build and deploy my image, automatically detects the port of the image and publishes it in the url https://dwd-demosite.onrender.com/ (It may take a few minutes to start up because the free layer stops the service if there is inactivity, but it works.)

