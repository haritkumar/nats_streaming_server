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