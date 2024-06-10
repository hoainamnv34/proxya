FROM alpine:latest

# Install dependencies
RUN apk add --no-cache bash curl


COPY entrypoint.sh /entrypoint.sh
COPY wait-for-it.sh /wait-for-it.sh

RUN chmod +x /entrypoint.sh
RUN chmod +x /wait-for-it.sh

RUN ls

ENTRYPOINT ["/entrypoint.sh"]
