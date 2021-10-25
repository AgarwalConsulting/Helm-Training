layout: true

.signature[@algogrit]

---

class: center, middle

# Helm

Gaurav Agarwal

---

# Agenda

- Helm is *GREAT*

---

class: center, middle

![Me](assets/images/me.png)

Software Engineer & Product Developer

Director of Engineering & Founder @ https://codermana.com

ex-Tarka Labs, ex-BrowserStack, ex-ThoughtWorks

---

class: center, middle

*What we wanted*

![In-class Training](assets/images/professional-training-courses.jpg)

---

class: center, middle

*What we got*

![WFH](assets/images/wfh.jpg)

---

## As a instructor

- I promise to

  - make this class as interactive as possible

  - use as many resources as available to keep you engaged

  - ensure everyone's questions are addressed

---

## What I need from you

- Be vocal

  - Let me know if there any audio/video issues ASAP

  - Feel free to interrupt me and ask me questions

- Be punctual

- Give feedback

- Work on the exercises

- Be *on mute* unless you are speaking

---
class: center, middle

## Class progression

![Learning Curve](assets/images/learning-curve.jpg)

---
class: center, middle

Here you are trying to *learn* something, while here your *brain* is doing you a favor by making sure the learning doesn't stick!

---

### Some tips

- Slow down => stop & think
  - listen for the questions and answer

- Do the exercises
  - not add-ons; not optional

- There are no dumb questions!

- Drink water. Lots of it!

---

### Some tips (continued)

- Take notes
  - Try: *Repetitive Spaced Out Learning*

- Talk about it out loud

- Listen to your brain

- *Experiment!*

---
class: center, middle

### 📚 Content ` > ` 🕒 Time

---
class: center, middle

## Show of hands

*Yay's - in Chat*

---
class: center, middle

The package manager for Kubernetes.

---
class: center, middle

## Need for Helm

---
class: center, middle

Kubernetes Helm fills the need to quickly and reliably provision container applications through easy install, update, and removal.

---
class: center, middle

Let's simplify things, to understand it deeply...

---
class: center, middle

How does K8s work?

---
class: center, middle

Kubernetes is a declarative system

---
class: center, middle

YAMLs Everywhere!

---
class: center, middle

For a scalable distributed application, you can have tons of microservices.

---

With each having their own specs for various K8s resources, like:

- Pods

- Deployments (for scalability and resilience)

- ConfigMaps / Secrets (for configuration)

- Service (for a server application)

- Volumes (for Stateful applications)

- RBAC / ServiceAccounts (for in-cluster management)

---
class: center, middle

Phew...

---
class: center, middle

What if you need multiple independent deployments within the same cluster?

---
class: center, middle

What if the (stateful) applications have a more complex startup/shutdown process?

---
class: center, middle

Helm helps you manage Kubernetes applications — Helm Charts help you define, install, and upgrade even the most complex Kubernetes application.

---
class: center, middle

## Where does Helm not shine?

---
class: center, middle

Let's take MySQL Management...

---
class: center, middle

![MySQL Management](assets/images/mysql-management.png)

---
class: center, middle

### Operators vs Helm charts

![Capabilities Model](assets/images/capabilities-model.png)

---

## Install & Setup

- Docker

- Kind

- `kubectl`

- Helm

---
class: center, middle

## Helm Architecture

---

### Helm Concepts

- The `chart` is a bundle of information necessary to create an instance of a Kubernetes application.

- The `config` contains configuration information that can be merged into a packaged chart to create a releasable object.

- A `release` is a running instance of a chart, combined with a specific config.

---

### Helm Components

- Helm Client

- Helm Library

---

Client is responsible for:

- Local chart development

- Managing repositories

- Managing releases

- Interfacing with the Helm library

- Sending charts to be installed

- Requesting upgrading or uninstalling of existing releases

---
class: center, middle

The Helm Library provides the logic for executing all Helm operations.

---
class: center, middle

interfaces with the Kubernetes API server

---

- Combining a chart and configuration to build a release

- Installing charts into Kubernetes, and providing the subsequent release object

- Upgrading and uninstalling charts by interacting with Kubernetes

---
class: center, middle

The standalone Helm library encapsulates the Helm logic so that it can be leveraged by different clients.

---
class: center, middle

The Helm client and library is written in the Go programming language.

---
class: center, middle

Helm 2 vs Helm 3: `Tiller`

---
class: center, middle

## Working with Helm CLI

---

Helm can:

- Interact with chart repositories where charts are stored

- Install and uninstall charts into an existing Kubernetes cluster

- Manage the release cycle of charts that have been installed with Helm

---
class: center, middle

### Installing and managing a chart

---
class: center, middle

We need to add a chart repo...

---
class: center, middle

[Helm Stable](https://github.com/helm/charts/tree/master/stable) vs [ArtifactHub](https://artifacthub.io/)

---
class: center, middle

A chart repository is an HTTP server that houses an `index.yaml` file and optionally some packaged charts.

.content-credits[https://helm.sh/docs/topics/chart_repository/]

---

Helm can *also* do the following:

- Create new charts from scratch

- Package charts into chart archive (tgz) files

---
class: center, middle

### Writing your first chart

---
class: center, middle

Code
https://github.com/AgarwalConsulting/Helm-Training

Slides
http://helm.slides.agarwalconsulting.io/
