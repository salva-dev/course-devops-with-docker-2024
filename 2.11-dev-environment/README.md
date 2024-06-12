# Exercise 2.11 dev environment

This is an environment for developing docker sites with drupal. Mount in ./drupal_data the code of the website.
The first time create an empty example site, to start editing in ./drupal_data

For have a drupal dev environment follow next steps if this is the first time you donwload the repo:

```console
# This is for give correct permissions to the volumes
# You must have a user 1001:1001 and add your user to group 1001 for view/edit code in ./drupal_data
mkdir -p ./drupal_data ./db_data && sudo chown 1001:1001 ./drupal_data ./db_data

```

For run the environment
```console
docker compose up

```

For quit the environment
```
docker compose down

```