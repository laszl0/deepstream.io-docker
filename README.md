Deepstream.io Docker Image For Kontena Usage
---

This is a standalone docker image for the deepstream.io server. 
It can be used as a single instance or within a Deepstream cluster.
What makes it different from the [official](https://github.com/deepstreamIO/deepstream.io-docker) image 
is the usage with Environment variables.

The config file and the permissions files are generated using ruby erb.

## Usage

Pass the config and permissions file content as Envirnment string.

```
services:
    deepstream:
        image: deepstreamio/deepstream.io
        ...
        secrets:
        ...
            - secret: CONFIG_YML
              name: CONFIG_YML
              type: env
            - secret: PERMISSIONS_YML
              name: PERMISSIONS_YML
              type: env
        ...
        hooks:
            post_start:
                - cmd: /init-config.sh
                  name: init-config
                  instances: 1
                  oneshot: true
```

Credits to deepstream.io
---
https://deepstream.io/
https://github.com/deepstreamIO/deepstream.io-docker