# Local Docker Registry

#### Running a local docker registry configured as pull through cache
For details see https://docs.docker.com/registry/recipes/mirror/

To run the local registry execute: `./run-docker-registry.sh <registry-volume>`

The registry wil run under http://127.0.0.1:5000

If you are using Docker for Mac you can configure the registry in the Preferences --> Daemon section.

Apply the following settings:
- Insecure registries: http://127.0.0.1:5000  (note: Docker for Mac complains about url format but it seems to accept it anyway)
- Registry mirrors: http://127.0.0.1:5000
