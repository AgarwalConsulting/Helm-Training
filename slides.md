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

- [Docker](https://docs.docker.com/engine/install/)

- [Kind](https://kind.sigs.k8s.io/docs/user/quick-start/#installation)

- [`kubectl`](https://kubernetes.io/docs/tasks/tools/)

- [Helm](https://helm.sh/docs/intro/install/)

.content-credits[https://github.com/AgarwalConsulting/Helm-Training/blob/master/Setup.md]

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

Library is responsible for:

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

![Security and Architecture](assets/images/security-audit.png)

.content-credits[https://helm.sh/blog/helm-2nd-security-audit]

---
class: center, middle

## Working with Helm CLI

---

Helm can:

- Install and uninstall charts into an existing Kubernetes cluster

- Manage the release cycle of charts that have been installed with Helm

---
class: center, middle

### Installing and managing a chart

---

*Commands*:

- `helm install`

- `helm uninstall`

- `helm upgrade`

---
class: center, middle

Searching for charts to install: `helm search`

---
class: center, middle

We need to add a chart repo...

---

Helm cli can *also*:

- Interact with chart repositories where charts are stored: `helm repo`

---
class: center, middle

[Helm Stable](https://github.com/helm/charts/tree/master/stable) vs [ArtifactHub](https://artifacthub.io/)

---
class: center, middle

*Exercise*: Installing and upgrading charts using `helm` cli

---

Locations of client cache:

```bash
ls $HOME/.cache/helm # Linux
ls $HOME/Library/Caches/helm # macOS
```

```cmd
dir %TEMP%\helm # Windows
```

.content-credits[https://helm.sh/docs/helm/helm/]

---
class: center, middle

### Writing your first chart

---

Helm cli can *also* do the following:

- Create new charts from scratch

- Package charts into chart archive (tgz) files

---

*Commands*:

- `helm create`

- `helm package`

---

Directory structure

```bash
.
├── Chart.yaml
├── charts
├── templates
│   ├── NOTES.txt
│   ├── _helpers.tpl
│   ├── deployment.yaml
│   ├── hpa.yaml
│   ├── ingress.yaml
│   ├── service.yaml
│   ├── serviceaccount.yaml
│   └── tests
│       └── test-connection.yaml
└── values.yaml

3 directories, 10 files
```

---

```bash
Chart.yaml          # A YAML file containing information about the chart
values.yaml         # The default configuration values for this chart
charts/             # A directory containing any charts upon which this chart depends.
templates/          # A directory of templates that, when combined with values,
                    # will generate valid Kubernetes manifest files.
```

```bash
templates/NOTES.txt # OPTIONAL: A plain text file containing short usage notes
LICENSE             # OPTIONAL: A plain text file containing the license for the chart
README.md           # OPTIONAL: A human-readable README file
values.schema.json  # OPTIONAL: A JSON Schema for imposing a structure on the values.yaml file
crds/               # OPTIONAL: Custom Resource Definitions
```

.content-credits[https://helm.sh/docs/topics/charts/]

---

- The `templates/` directory is for template files.

- When Helm evaluates a chart, it will send all of the files in the `templates/` directory through the template rendering engine.

- It then collects the results of those templates and sends them on to Kubernetes.

- Template names do not follow a rigid naming pattern.

  - Use the suffix `.yaml` for YAML files and `.tpl` for helpers.

---

- The `values.yaml` file is important to templates.

- This file contains the *default values* for a chart.

- These values may be overridden by users during `helm install` or `helm upgrade`.

---

- In Helm, one chart may depend on any number of other charts.

- These dependencies can be dynamically linked using the dependencies field in `Chart.yaml` or brought in to the `charts/` directory and managed manually.

---
class: center, middle

`Chart.yaml`

---

```yaml
apiVersion: The chart API version (required)
name: The name of the chart (required)
version: A SemVer 2 version (required)
kubeVersion: A SemVer range of compatible Kubernetes versions (optional)
description: A single-sentence description of this project (optional)
type: The type of the chart (optional)
keywords:
  - A list of keywords about this project (optional)
home: The URL of this projects home page (optional)
sources:
  - A list of URLs to source code for this project (optional)
dependencies: # A list of the chart requirements (optional)
  - name: The name of the chart (nginx)
    version: The version of the chart ("1.2.3")
    repository: (optional) The repository URL ("https://example.com/charts") or alias ("@repo-name")
    condition: (optional) A yaml path that resolves to a boolean, used for enabling/disabling charts (e.g. subchart1.enabled )
    tags: # (optional)
      - Tags can be used to group charts for enabling/disabling together
    import-values: # (optional)
      - ImportValues holds the mapping of source values to parent key to be imported. Each item can be a string or pair of child/parent sublist items.
    alias: (optional) Alias to be used for the chart. Useful when you have to add the same chart multiple times
maintainers: # (optional)
  - name: The maintainers name (required for each maintainer)
    email: The maintainers email (optional for each maintainer)
    url: A URL for the maintainer (optional for each maintainer)
icon: A URL to an SVG or PNG image to be used as an icon (optional).
appVersion: The version of the app that this contains (optional). Needn't be SemVer. Quotes recommended.
deprecated: Whether this chart is deprecated (optional, boolean)
annotations:
  example: A list of annotations keyed by name (optional).
```

---

- Every chart must have a `version` number.

- A version must follow the [SemVer 2](https://semver.org/spec/v2.0.0.html) standard.

---

- The `apiVersion` field should be `v2` for Helm charts that require at least Helm 3.

- Charts supporting previous Helm versions have an `apiVersion` set to `v1` and are still installable by Helm 3.

---

- When managing charts in a Chart Repository, it is sometimes necessary to deprecate a chart.

- The optional `deprecated` field in Chart.yaml can be used to mark a chart as deprecated.

---

- The `type` field defines the type of chart.

- There are two types: `application` and `library`.

---

- Application is the default type and it is the standard chart which can be operated on fully.

- The library chart provides utilities or functions for the chart builder.

- A library chart differs from an application chart because it is not installable and usually doesn't contain any resource objects.

- An application chart can be used as a library chart. This is enabled by setting the type to library.

---
class: center, middle

*Exercise*: Writing a *stateless* chart

---
class: center, middle

Helm install/uninstall order

.content-credits[https://github.com/helm/helm/blob/v3.7.0/pkg/releaseutil/kind_sorter.go]

---
class: center, middle

### Packaging and hosting our chart in a repository

---
class: center, middle

To package: `helm package`

---
class: center, middle

### Versioning charts

---
class: center, middle

A chart repository is an HTTP server that houses an `index.yaml` file and optionally some packaged charts.

.content-credits[https://helm.sh/docs/topics/chart_repository/]

---

#### Chart repository structure

```bash
charts/
  |
  |- index.yaml
  |
  |- alpine-0.1.2.tgz
  |
  |- alpine-0.1.2.tgz.prov
```

---

- The index file is a yaml file called `index.yaml`.

- It contains some metadata about the package, including the contents of a chart's Chart.yaml file.

- A valid chart repository must have an index file.

- The index file contains information about each chart in the chart repository.

---
class: center, middle

`helm repo index`

---
class: center, middle

The preferred way of sharing chart is by uploading them to a chart repository.

---
class: center, middle

*Demo*: Hosting Chart Repositories

---
class: center, middle

### Publishing charts

.content-credits[https://artifacthub.io/docs/topics/repositories/#verified-publisher]

---
class: center, middle

*Exercise*: Versioning and hosting charts

---
class: center, middle

![Development lifecycle](assets/images/lifecycle.png)

.image-credits[https://github.com/cloudacademy/helm-repo]

---
class: center, middle

## Advanced templating

---
class: center, middle

### Built-in objects

.content-credits[https://helm.sh/docs/chart_template_guide/builtin_objects/]

---
class: center, middle

`.Value.name` & `.Release.Name`

---
class: center, middle

The leading dot before `Release` & `Value` indicates that we start with the top-most namespace for this scope.

---

- `Release`: This object describes the release itself. It has several objects inside of it:

  - `Release.Name`: The release name

  - `Release.Namespace`: The namespace to be released into (if the manifest doesn’t override)

  - `Release.IsUpgrade`: This is set to true if the current operation is an upgrade or rollback.

  - `Release.IsInstall`: This is set to true if the current operation is an install.

  - `Release.Revision`: The revision number for this release. On install, this is 1, and it is incremented with each upgrade and rollback.

  - `Release.Service`: The service that is rendering the present template. On Helm, this is always Helm.

---
class: center, middle

`Values` passed into the template from the `values.yaml` file and from *user-supplied files*

---
class: center, middle

By default, `Values` is empty

---
class: center, middle

If you need to delete a key from the default values, you may override the value of the key to be `null`.

.content-credits[https://helm.sh/docs/chart_template_guide/values_files/]

---

Other objects:

- `Chart`: The contents of the `Chart.yaml` file

- `Files`: provides access to all non-special files in a chart

- `Capabilities`: provides information about what capabilities the Kubernetes cluster supports

- `Template`: current template that is being executed

---

- `Template`: Contains information about the current template that is being executed

  - `Template.Name`: A namespaced file path to the current template (e.g. `mychart/templates/mytemplate.yaml`)

  - `Template.BasePath`: The namespaced path to the templates directory of the current chart (e.g. `mychart/templates`).

---

- `Files`: This provides access to all non-special files in a chart. While you cannot use it to access templates, you can use it to access other files in the chart. See the section Accessing Files for more.

  - `Files.Get` is a *function* for getting a file by name (`.Files.Get config.ini`)

  - `Files.GetBytes`: is a *function* for getting the contents of a file as an array of bytes instead of as a string. This is useful for things like images.

  - `Files.Glob`: is a *function* that returns a list of files whose names match the given shell glob pattern.

  - `Files.Lines`: is a *function* that reads a file line-by-line. This is useful for iterating over each line in a file.

  - `Files.AsSecrets`: is a *function* that returns the file bodies as Base 64 encoded strings.

  - `Files.AsConfig`: is a *function* that returns file bodies as a YAML map.

---

- `Capabilities`: This provides information about what capabilities the Kubernetes cluster supports.

  - `Capabilities.APIVersions` is a set of versions.

  - `Capabilities.APIVersions.Has $version` indicates whether a version (e.g., batch/v1) or resource (e.g., apps/v1/Deployment) is available on the cluster.

  - `Capabilities.KubeVersion` and `Capabilities.KubeVersion.Version` is the Kubernetes version.

  - `Capabilities.KubeVersion.Major` is the Kubernetes major version.

  - `Capabilities.KubeVersion.Minor` is the Kubernetes minor version.

---

- `Capabilities.HelmVersion` is the object containing the Helm Version details, it is the same output of helm version

  - `Capabilities.HelmVersion.Version` is the current Helm version in semver format.

  - `Capabilities.HelmVersion.GitCommit` is the Helm git sha1.

  - `Capabilities.HelmVersion.GitTreeState` is the state of the Helm git tree.

  - `Capabilities.HelmVersion.GoVersion` is the version of the Go compiler used.

---
class: center, middle

The built-in values always begin with a capital letter.

---
class: center, middle

you are free to *use a convention* that suits your team

---
class: center, middle

*Convention*: use only initial lower case letters in order to distinguish local names from those built-in

---
class: center, middle

### Template functions & pipelines

.content-credits[https://helm.sh/docs/chart_template_guide/functions_and_pipelines/]

---
class: center, middle

to transform the supplied data in a way that makes it more useable: *use functions*

---
class: center, middle

Template functions follow the syntax: `functionName arg1 arg2...`

---
class: center, middle

Helm has over 60 available functions

---

- Some defined by [Go template language](https://pkg.go.dev/text/template#hdr-Actions)

- Most part of the [Sprig template library](https://masterminds.github.io/sprig/)

---
class: center, middle

"Helm template language" is actually a combination of the Go template language, some extra functions, and a variety of wrappers to expose certain objects to the templates.

---
class: center, middle

Many resources on Go templates may be helpful as you learn about templating.

---
class: center, middle

**Pipelines** are a tool for chaining together a series of template commands to compactly express a series of transformations

---
class: center, middle

```tpl
{{ .Values.favorite.food | upper | quote }}
```

---
class: center, middle

#### `default` function

---
class: center, middle

allows you to specify a default value inside of the template, in case the value is omitted

---
class: center, middle

```tpl
default DEFAULT_VALUE GIVEN_VALUE
```

---
class: center, middle

Eg:

```tpl
{{ .Values.favorite.drink | default "tea" | quote }}
```

---
class: center, middle

#### `lookup` function

---
class: center, middle

used to *look up* resources in a running cluster

---
class: center, middle

`lookup apiVersion, kind, namespace, name -> resource or resource list`

---
class: center, middle

Both name and namespace are optional and can be passed as an empty string (`""`)

---
class: center, middle

![Lookup Behavior](assets/images/lookup-behavior.png)

---

- When lookup returns an object, it will return a dictionary

- This dictionary can be further navigated to extract specific values

---
class: center, middle

returns the annotations present for the mynamespace object

```tpl
(lookup "v1" "Namespace" "" "mynamespace").metadata.annotations
```

---
class: center, middle

When `lookup` returns a list of objects, it is possible to access the object list via the `items` field.

---
class: center, middle

```tpl
{{ range $index, $service := (lookup "v1" "Service" "mynamespace" "").items }}
    {{/* do something with each service */}}
{{ end }}
```

---
class: center, middle

#### Operators are functions

---

- For templates, the operators `(eq, ne, lt, gt, and, or and so on)` are all implemented as functions.

- In pipelines, operations can be grouped with parentheses `((`, and `))`.

---
class: center, middle

List of all functions

.content-credits[https://helm.sh/docs/chart_template_guide/function_list/]

---
class: center, middle

### Flow Control

---
class: center, middle

#### `if/else`

---

```tpl
{{ if PIPELINE }}
  # Do something
{{ else if OTHER PIPELINE }}
  # Do something else
{{ else }}
  # Default case
{{ end }}
```

---
class: center, middle

control structures can execute an entire pipeline, not just evaluate a value

---

A pipeline is evaluated as false if the value is:

- a boolean `false`

- a numeric `zero`

- an `empty string`

- a `nil` (empty or null)

- an empty collection (`map`, `slice`, `tuple`, `dict`, `array`)

---

```tpl
data:
  myvalue: "Hello World"
  drink: {{ .Values.favorite.drink | default "tea" | quote }}
  food: {{ .Values.favorite.food | upper | quote }}
  {{ if eq .Values.favorite.drink "coffee" }}mug: "true"{{ end }}
```

---
class: center, middle

What about whitespaces?

---
class: center, middle

`{{` vs `{{-`

---
class: center, middle

#### `with` for modifying scope

---
class: center, middle

`.` is a reference to the current scope

---
class: center, middle

How to access other objects within `with` scope?

---
class: center, middle

`$` is mapped to the root scope

---
class: center, middle

#### `range` for looping

---
class: center, middle

programming languages have support for looping using for loops, foreach loops

---
class: center, middle

### Variables

---
class: center, middle

a variable is a named reference to another object

---
class: center, middle

Variables are assigned with a special assignment operator: `:=`

---
class: center, middle

```tpl
{{- $relname := .Release.Name -}}
```

---
class: center, middle

range with variables

```tpl
toppings: |-
  {{- range $index, $topping := .Values.pizzaToppings }}
    {{ $index }}: {{ $topping }}
  {{- end }}
```

---
class: center, middle

variables are scoped to the template or the block in which they are defined

---
class: center, middle

#### Named templates

---
class: center, middle

A named template (sometimes called a partial or a subtemplate) is simply a template defined inside of a file, and given a name.

---
class: center, middle

Code
https://github.com/AgarwalConsulting/Helm-Training

Slides
http://helm.slides.agarwalconsulting.io/
