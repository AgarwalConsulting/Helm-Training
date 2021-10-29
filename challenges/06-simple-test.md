# Steps

- Ensure you have a chart which can deploy `agarwalconsulting/yaes-server`

- Create a directory called `templates/tests` and define a `test.yaml` file inside it

- The resource inside `test.yaml` should test the chart.

  - A test would pass if the command succeeds.

- To run a test, install the chart and then invoke the test using: `helm test <release-name>`.

## Questions

- What kind of a command can you issue to test success?
