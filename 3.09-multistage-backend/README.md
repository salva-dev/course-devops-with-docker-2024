# Exercise 3.08 multistage example-frontend

As the application is a static content I have used nginx as a base for the second phase of the Dockerfile and a great size optimisation is achieved, more than 400Mb!!

## Image size before changes:

```console
docker image ls | grep example
example-frontend                                                               latest                          57b7452a747b   18 seconds ago       474MB
```

## Changes and Image size after these changes:

```console
docker image ls | grep example
example-frontend                                                               latest                          f0c7759053d3   About a minute ago   23.8MB
```