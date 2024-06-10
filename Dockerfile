FROM alpine:latest

# Install dependencies
RUN apk add --no-cache bash curl

# Copy the wait-for-it script
COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN ls

ENTRYPOINT ["/entrypoint.sh"]
