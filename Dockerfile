FROM node:24-alpine

WORKDIR /app
COPY package.json ./
COPY server.js app.js index.html styles.css ./

ENV NODE_ENV=production
ENV PORT=10000
EXPOSE 10000

CMD ["node", "server.js"]
