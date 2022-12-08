# Install & configure a chart

Let's install `nginx` into our cluster using a helm chart.

## Step 1: Adding a repo

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
```

## Step 2: Search the repo for chart you need to install

```bash
helm search repo nginx
```

## Step 3: Select the chart you need & install

```bash
helm install <release-name> <chart-name>
```

## Step 4: Check if resources are created in your cluster & chart is 'deployed'

```bash
kubectl get all -o wide
helm list
```

## Step 5: Clean up

```bash
helm uninstall <release-name>
```

---

Do the same with `postgresql`

- Review the output of `helm install`
- How can you connect to the postgres instance running within the cluster?
- What are the k8s resources created?
