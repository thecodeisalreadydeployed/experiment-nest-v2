FROM node:14-alpine
COPY . .
RUN npm install --only=production
ENV PORT ${PORT}
RUN echo "PORT=${PORT}" > .env
EXPOSE ${PORT}
CMD node dist/main
