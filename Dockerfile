FROM node:14-alpine as build-env
ADD . /app
WORKDIR /app
RUN npm install --frozen-lockfile
RUN npm run build
FROM node:14-alpine
WORKDIR /app
COPY --from=build-env /app/package.json /app/package-lock.json ./
COPY --from=build-env /app/node_modules ./node_modules
COPY --from=build-env /app/dist ./
ENV PORT ${PORT}
EXPOSE ${PORT}
CMD echo "PORT=${PORT}" > .env && node main
