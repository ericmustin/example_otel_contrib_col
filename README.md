## OpenTelemetry Datadog Sandbox

This Repository allows users to deploy a feature opentelemetry-collector-contrib for testing upscaled metrics exported to Datadog via the Datadog Exporter.

To learn more about OpenTelemetry, please review the [Datadog Documentation](https://docs.datadoghq.com/tracing/setup_overview/open_standards/#opentelemetry-collector-datadog-exporter)

### Docker-Compose

This test environment is useful for testing Docker-specific behavior of the exporter.
It defines a standalone collector setup within a docker network.

1. Replace <YOUR_API_KEY> with your API key in `otel-collector-config.yml`
2. `$ bash ./build.sh`
3. `$ docker-compose up`
