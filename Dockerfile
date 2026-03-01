FROM ghcr.io/colanode/server:0.4.6

RUN echo '{"cors":{"origin":"https://community.theacquisitionguild.org"}}' > /app/config.json

ENV CONFIG=/app/config.json
