# docker-express-remplete

## Usage

```sh
$ dokcer-compose up
```

## Hack point

### Volume tricl

containers'node_modules will disappear. So in the `docker-compose.yaml`, add `/home/admin/app/node_modules` at volume.

In detail, see this link. [volume-trick](http://jdlm.info/articles/2016/03/06/lessons-building-node-app-docker.html)

```yaml
version: "2"
services:
  web:
  ...
    volumes:
      - '.:/home/admin/app'           // container's node_modules disappeared
      - /home/admin/app/node_modules  // container's node_modules showed
  ...
```
