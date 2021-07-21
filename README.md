## OpenTelemetry Datadog Sandbox

This Repository allows users to deploy a feature branch opentelemetry-collector-contrib for testing upscaled metrics exported to Datadog via the Datadog Exporter.

To learn more about OpenTelemetry, please review the [Datadog Documentation](https://docs.datadoghq.com/tracing/setup_overview/open_standards/#opentelemetry-collector-datadog-exporter)

### Docker-Compose

- This test environment is useful for testing Docker-specific behavior of the exporter.
- It defines a standalone collector setup within a docker network. You can either add another dockerized application to the docker-network by adding to the `docker-compose.yml`, or expose the container to the host traffic by updating the `ports` section of the `docker-compose.yml` file. 
- If adding another application to the docker-network, ensure you're setting the correct host/port for your application to expport it's traces to, which can be done by setting the environment variable `OTEL_EXPORTER_OTLP_ENDPOINT=http://otel-collector:55681` within your apps docker-compose configuration.

1. Replace `<YOUR_API_KEY>` with your API key in `otel-collector-config.yml`
2. `$ bash ./build.sh`
3. `$ docker-compose up`
