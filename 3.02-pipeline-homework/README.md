# Exercise 3.02 pipeline for homework

The repository is: https://github.com/salva-dev/dwd-demosite-pipeline
The site deployed is in: https://dwd-demosite-pipeline.onrender.com/

It is a Drupal example site. The repository contains a Dockerfile and code files needed to generate an image with the drupal website running.
It also has in .github/deploy.yml the GitHub Action to call the render.com API and deploy it there.

To get everything working I had to do the following steps (I include screenshots in png's in this repo):

1.- I create an API key in render.com to be able to call it later from the GitHub action.
2.- I create a new service in render.com.
3.- I associate the github repository ( https://github.com/salva-dev/dwd-demosite-pipeline ) to this new service.
4.- I disable the autodeploy option, otherwise render will watch the repository and with any change it will try to deploy it, and we want to do it from GitHub.
5.- Finally, I create the action in the repository, using an action already created to deploy to render. The action can be seen at .github/deploy.yml 