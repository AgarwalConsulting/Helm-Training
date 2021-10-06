# Advanced Helm for DevOps & Application Developers by @algogrit

## Pre-requisites

- At least 3 years of active programming experience
- Understanding of software development and the software development lifecycle
- Strong understanding of Containers
  - Creating Images
  - Running containers
- Strong understanding of Linux
  - Processes, libcontainer, namespaces, seccomp, apparmor, etc.
- Working knowledge of Kubernetes
  - API Objects: Deployments, Stateful Sets, Jobs, CronJobs, etc.
    - Including deployment patterns - Canary, Blue-Green, etc.
  - Networking: Service, Ingress, etc.
- Some understanding of security in K8s: RBAC, ServiceAccounts, etc.

## Objectives

- Understand what Helm is and how to install it
- Understanding of Helm charts, templates, releases, revisions, and repositories
- How to deploy, upgrade and rollback Helm charts
- How to create and host your own Helm charts in depth

## Agenda

### Day 1

- Overview of K8s resources
  - Pods / Nodes
  - Deployments / Secrets
  - RBAC / ServiceAccounts

- Need for Helm
  - Helm v2 vs v3

- Helm CLI
  - Installing/Upgrading charts
  - Removing charts
  - Hands-on: Installing community charts & configuring

- Writing your first charts
  - Typical directory structure
  - Using Templating
  - Hands-on: Writing your first chart

- Configuring your charts
  - Using values.yaml

- Versioning and releasing charts
  - Understanding the Charts.yaml file
  - Publishing your charts
  - Hands-on: Versioning and Publishing

### Day 2

- Advanced Templating
  - Built-in objects
  - Template functions & pipelines
  - Flow Control
  - Variables
  - Named Templates

- Advanced charts
  - Accessing Files
  - Subcharts & global values
  - Hands-on: Writing a more complex chart

- Upgrading charts
  - Deployment strategies
  - Managing multiple versions of charts installed
  - Hands-on: Upgrading and managing multiple installations of the same chart

- Debugging
  - Chart installations
  - Templates

- Testing charts
  - Writing simple tests in `/template`
  - Working with plugins
  - Using `helm-unittest`
  - Hands-on: Testing your charts

- Overview of helm plugins

- Writing secure charts
  - RBAC/ServiceAccounts
  - Securing your helm repository
  - Container security
  - Validating your charts
