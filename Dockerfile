FROM ubuntu:16.04
LABEL maintainer <Harit Kumar>

COPY nats-streaming-server /nats-streaming-server

# Expose client and management ports
EXPOSE 4222 8222
RUN chmod +x /nats-streaming-server
# Run with default memory based store 
ENTRYPOINT ["/nats-streaming-server"]
CMD ["-m", "8222"]