FROM node:14-alpine
COPY . .
RUN npm install
ENV PORT ${PORT}
ARG PORT=${PORT}
EXPOSE ${PORT}
RUN echo "PORT=${PORT}" > .env
CMD node dist/main
