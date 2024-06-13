# Exercise 3.03 scripting magic

Script is builder.sh . I haven't changed anything.

For run you must pass to docker run <GitHub repo> <Docker Hub repo> <<Docker Hub user> <Docker Hub pwd>
For example:
```console
docker build . -t builder
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock \
    builder:latest mluukkai/express_app salvahappydev/testing2 salvahappydev pass
```
