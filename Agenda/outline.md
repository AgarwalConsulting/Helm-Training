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

---

## Agenda

### Day 1

- Overview of K8s resources
  - Pods / Nodes
  - Deployments / Secrets
  - RBAC / ServiceAccounts

- Need for Helm
  <!-- - Helm v2 vs v3 -->

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
  - Library & Subcharts
  - Global values
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
  - Hands-on: Testing your charts

- Overview of helm plugins
  - Working with plugins

### Day 3 (8 hours)

- Helm Hooks
  - What hooks are available?
  - Best practices for tasks that are generally performed inside hooks

- Helm charts in practice
  - What to look for during upgrades and rollbacks (And how to manage using helm hooks)?
    - Limitations and alternatives
  - Chart Design Patterns (with example community charts)

- Helm User Input Validation (Schema Validation)

- Writing secure charts
  - RBAC/ServiceAccounts
  - Securing your helm repository
  - Container security
  - Validating your charts

- Final Project: Packaging a micro-services based application

---

## Machine Requirements

- 8 GiB of RAM
- 4-core i7 or higher

## Software Requirements

- Docker
  - Docker for Mac or Windows (as required)
- [Kind](https://kind.sigs.k8s.io/)
- `kubectl`
- Helm v3

Alternatively, the students can use a VM during the training which will have the above tools installed. In order, to use the VM during the training they would require:

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)
