FROM louislam/uptime-kuma:latest

WORKDIR /app

EXPOSE 3001

VOLUME ["/app/data"]

HEALTHCHECK --interval=60s --timeout=30s --start-period=180s --retries=5 CMD node extra/healthcheck.js

ENTRYPOINT ["/usr/bin/dumb-init", "--", "extra/entrypoint.sh"]

CMD ["node", "server/server.js"]
