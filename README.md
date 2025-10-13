# supbox

A self-contained box to troubleshoot Kubernetes environments, built on alpine with common packages for my use cases added in as needed

## Usage

Kubernetes - apply the yaml and exec into the resulting pod to access core troubleshooting tools.

Copy the yaml to a local machine with kubectl access and edit the namespace to deploy to whatever namespace is needed

Once running, exec into the pod and run any needed commands
```
kubectl -n <namespace> exec -it deploy/supbox -- sh
```

### Local container usage

Just the container:
`docker run -d --name supbox  ghcr.io/guctum/supbox`

With the container running, exec it into it:
`docker exec -it supbox sh`

If further tooling is needed, it can be installed in the container via apk