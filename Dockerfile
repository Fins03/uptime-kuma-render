FROM louislam/uptime-kuma:latest

WORKDIR /app

EXPOSE 3001

ENTRYPOINT ["/usr/bin/dumb-init", "--", "extra/entrypoint.sh"]

CMD ["node", "server/server.js"]
