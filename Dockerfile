FROM ghcr.io/colanode/server:0.4.6

RUN echo '{"cors":{"origin":"https://community.theacquisitionguild.org"},"email":{"enabled":true,"from":{"email":"community@theacquisitionguild.org","name":"The Acquisition Guild"},"provider":{"type":"smtp","host":"theacquisitionguild.org","port":587,"secure":false,"auth":{"user":"env://SMTP_USER","password":"env://SMTP_PASSWORD"}}}}' > /app/config.json

ENV CONFIG=/app/config.json
