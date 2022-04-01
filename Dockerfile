FROM node:14-alpine
COPY . .
RUN npm install
ENV PORT ${PORT}
EXPOSE ${PORT}
CMD echo "PORT=${PORT}" > .env && node dist/main
