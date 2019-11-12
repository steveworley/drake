# Drake

Drake a Drush-Fake SSH container that is intended to be used for stubbing Drush commands for testing. Drush will return static json files based on the received command.

Example:

```
ssh drupal@localhost:22 drush pml
```

## Mounted volumes

The drush script will look to respond with `/tmp/{command/index.json`. For example with the above command - default configuration will attempt repsond with `/tmp/pml/index.json`

## Environment Variables

- `BASE_DIR` control the mount point with the drush script.


## Attribution

https://github.com/sickp/docker-alpine-sshd
