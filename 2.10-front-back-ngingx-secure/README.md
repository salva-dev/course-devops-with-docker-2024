# Explanation of solution

There are no changes in the original Dockerfile's, although I have included them in the folder following the instructions (folders ./1.12xxx and ./1.13). 
The only thing that changes is in the docker-compose: in the ‘frontend:’ entry, I had to pass a new parameter to the ‘build’ of the Dockerfile so that the url to call the api is /api/ . 
I have achieved this by extending the ‘build’ tag:
```
...
build: 
      context: ./1.12-hello-frontend
      args:
        - REACT_APP_BACKEND_URL=http://localhost/api
...
```
In the frontend dockerfile the line 16 is ARG REACT_APP_BACKEND_URL with the default option, but when I pass this argument and build again this variable is overwritten:
```
...
# Build the project
ARG REACT_APP_BACKEND_URL=http://localhost:8080
RUN npm run build
...
```

Finally I ran docker compose up --build to force the build, and go with the broser to http://localhost and all buttons works.