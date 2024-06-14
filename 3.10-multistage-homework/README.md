# Exercise 3.10 multistage homework

As the application is an executable, I have used alpine as a base for the second phase of the Dockerfile and a great size optimisation is achieved, more than 400Mb!!

## Changes and Image size before these changes:

I have put together commands and I delete source files.

```console
docker image ls | grep example
example-backend                                                                latest                          f8483d32e05c   About a minute ago   447MB
```


## Changes and Image size after these changes:

```console
docker image ls | grep example
example-backend                                                                latest                          cc9e5d30f314   8 minutes ago    23.7MB
```