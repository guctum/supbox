# supbox

A self-contained box to troubleshoot Kubernetes environments

## Usage

Kubernetes - apply the yaml and exec into the resulting pod to access core troubleshooting tools

### Local container usage

Just the container:
`docker run -d --name supbox  ghcr.io/guctum/supbox sleep infinity`

With the container running, exec it into it:
`docker exec -it supbox sh`

If further tooling is needed, it can be installed in the container via apk