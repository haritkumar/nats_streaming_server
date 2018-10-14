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

## Features
In addition to the features of the core NATS platform, NATS Streaming provides the following:

- Enhanced message protocol - NATS Streaming implements its own enhanced message format using Google Protocol Buffers. These messages are transmitted as binary message payloads via core NATS platform, and thus require no changes to the basic NATS protocol. NATS Streaming messages contain the following fields:
Sequence - a globally ordered sequence number for the subject’s channel
Subject - The NATS Streaming delivery subject
Reply - The optional “reply-to” subject
Data - The message payload
Timestamp - the received timestamp, in nanoseconds.
Redelivered - A flag signifying whether this message has been redelivered by the server
CRC32 - An optional IEEE CRC32

- Message/event persistence - NATS Streaming offers configurable message persistence either in-memory or via flat files. The storage subsystem uses a public interface that allows contributors to develop their own custom implementations.

- At-least-once-delivery - NATS Streaming offers message acknowledgements between publisher and server (for publish operations) and between subscriber and server (to confirm message delivery). 
Messages are persisted by the server in memory or secondary storage (or other external storage) and will be redelivered to eligible subscribing clients as needed.

- Publisher rate limiting - NATS Streaming provides a connection option called MaxPubAcksInFlight that effectively limits the number of unacknowledged messages that a publisher may have in-flight at any given time. When this maximum is reached, further async publish calls will block until the number of unacknowledged messages falls below the specified limit.

- Rate matching/limiting per subscriber - Subscriptions may specify a MaxInFlight option that designates the maximum number of outstanding acknowledgements (messages that have been delivered but not acknowledged) that NATS Streaming will allow for a given subscription. When this limit is reached, NATS Streaming will suspend delivery of messages to this subscription until the number of unacknowledged messages falls below the specified limit.

- Historical message replay by subject - New subscriptions may specify a start position in the stream of messages stored for the subscribed subject’s channel. By using this option, message delivery may begin at:
The earliest message stored for this subject
The most recently stored message for this subject, prior to the start of the current subscription. This is commonly thought of as “last value” or “initial value” caching.
A specific date/time in nanoseconds
An historical offset from the current server date/time, e.g. the last 30 seconds.
A specific message sequence number

- Durable subscriptions - Subscriptions may also specify a “durable name” which will survive client restarts. Durable subscriptions cause the server to track the last acknowledged message sequence number for a client and durable name. When the client restarts/resubscribes, and uses the same client ID and durable name, the server will resume delivery beginning with the earliest unacknowledged message for this durable subscription.


https://nats.io/documentation/streaming/nats-streaming-intro/



