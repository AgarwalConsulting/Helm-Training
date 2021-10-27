# Steps

- Create a new chart

- Define a deployment, a service and an "optional" ingress

- The ingress should be configurable from the `values.yaml`

  - url

  - scheme

  - certificate provisioning?

## Other instructions

- Use the image [`agarwalconsulting/emp-server`](https://hub.docker.com/repository/docker/agarwalconsulting/emp-server) for this exercise

  - `PORT` can be configured as an environment variable

- The `kind` config provided can have a ingress controller installed, using: `make k8s-kind-create`

- Typical Ingress spec here: [Ingress Doc](https://kubernetes.io/docs/concepts/services-networking/ingress/)
