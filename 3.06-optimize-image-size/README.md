# Exercise 3.06 optimize image size

I've copied each folder so the Dockerfiles are in its folder.
In each folder are commands-and-output.txt

## Image size before changes:

```console
docker image ls | grep example
example-backend                                                                latest                          7f795dee3954   21 minutes ago      447MB
example-frontend                                                               latest                          ce634058c203   13 days ago         482MB
```

## Changes and Image size after these changes:

I have put together commands and I delete source files.

```console
docker image ls | grep example
example-backend                                                                latest                          f8483d32e05c   About a minute ago   447MB
example-frontend                                                               latest                          57b7452a747b   18 seconds ago       474MB
```

