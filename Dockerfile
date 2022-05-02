FROM node:16
WORKDIR /app
RUN npm install
COPY . .
CMD ["npm", "build"]
CMD ["npm", "start"]
