# Writing a stateless chart

Creating a chart for `agarwalconsulting/spring-greeting`

## Step 1: Create a chart

```bash
helm create <chart-name>
```

## Step 2: View the files & directories created

```bash
cd <chart-name>
tree .
```

## Step 3: Review the `Chart.yaml` & `values.yaml`

## Step 4: Edit `values.yaml`

```yaml
image:
  repository: agarwalconsulting/spring-greeting
```

Optionally set the tag as well.

## Step 5: Review the templates in `templates` directory

## Step 6: Remove `.yaml` files other than `deployment.yaml`, `service.yaml`, `serviceaccount.yaml`

## Step 7: Install the chart

```bash
helm install <release-name> ./
```

## Step 8: Make sure the pod(s) are created

## Step 9 (Optional): Apply a custom configuration

Outside `<your-chart>` directory, create a `custom-values.yaml`, with the following content:

```yaml
replicas: 5
```

And apply this to your current release:

```bash
helm upgrade <release-name> ./<your-chart> -f custom-values.yaml
```
