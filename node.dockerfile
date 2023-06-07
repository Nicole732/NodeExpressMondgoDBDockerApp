FROM    node:alpine

LABEL author="Nicole Ketchiozo"

ENV NODE_ENV=production
ENV PORT=3000

WORKDIR /var/www
COPY    package.json package-lock.json ./
RUN npm install

COPY . ./
EXPOSE $PORT 

ENTRYPOINT ["npm", "start"]





