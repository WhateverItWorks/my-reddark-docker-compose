FROM node
WORKDIR /app
COPY ./package.json /app/package.json
COPY ./package-lock.json /app/package-lock.json
RUN npm ci
COPY ./* /app/
EXPOSE 3212

CMD node main.js
