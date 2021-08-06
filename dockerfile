FROM node:alpine
WORKDIR /home/node/app
COPY package.json yarn.lock ./
RUN yarn
COPY . .
ENV NODE_ENV=production
EXPOSE 3000
CMD ["node","main.js"]