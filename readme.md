## NATS Streaming Server
NATS Streaming is an extremely performant, lightweight reliable streaming platform built on NATS.

NATS Streaming provides the following high-level feature set.

- Log based.
- At-Least-Once Delivery model, giving reliable message delivery.
- Rate matched on a per subscription basis.
- Replay/Restart
- Last Value Semantics

### Run streaming server
```sh
docker run -p 4222:4222 -p 8222:8222 haritkumar/nats-streaming-server
```

## NATS Streaming Concepts
NATS Streaming is a data streaming system powered by NATS, and written in the Go programming language. The executable name for the NATS Streaming server is nats-streaming-server. NATS Streaming embeds, extends, and interoperates seamlessly with the core NATS platform. The NATS Streaming server is provided as open source software under the Apache-2.0 license. Synadia actively maintains and supports the NATS Streaming server.

![alt text](https://res.cloudinary.com/haritkumar/image/upload/v1539505177/github/nats_stream.png)

https://nats.io/documentation/streaming/nats-streaming-intro/



