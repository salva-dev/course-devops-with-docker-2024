# Exercise 3.10 multistage spring project

I took spring project of exercise 1.11. The orginal Dockerfile is named Dockerfile-before-changes. New one is file "Dockfile".
I have built the image in multistage to optimise image space achieving an optimisation of more than 60Mb.
I have also added a user with UID 1000 so that it does not run as root. 

## Changes and Image size before these changes:

I have put together commands and I delete source files.

```console
docker image ls | grep spring                                                                           130 ↵
spring-project                                                                 latest                          c86a7df24b4d   About a minute ago   292MB
```


## Changes and Image size after these changes:

```console
$ docker image ls | grep spring                                                                                 130 ↵
spring-project                                                                 latest                          4d2a09a37bc0   About a minute ago   225MB
```