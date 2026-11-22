FROM alpine:latest
RUN apk add --no-cache curl unzip ca-certificates tzdata
WORKDIR /app
RUN curl -L -o xray.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip \
    && unzip xray.zip \
    && rm xray.zip \
    && chmod +x xray
COPY config.json /app/config.json
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
CMD ["/app/entrypoint.sh"]
