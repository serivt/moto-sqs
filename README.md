# Moto Server SQS

Docker build for running a local moto SQS server, this is useful for doing local integration testing of clients that use AWS Simple Queue Service without actually hitting AWS.

## Usage

Start a local service:
```bash
docker run -it --rm -p 4576:4576 serivt/moto-sqs
```

Using it in docker-compose:

```yaml
version: '3.6'
services:
  sqs:
    images: servit/moto-sqs:latest
    ports:
      - "4576:4576"
```