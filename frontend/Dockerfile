# MultiStaging TEST
#Stage 1 building app

FROM node:16 AS builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

#Stage put builded to the nginx container
# Last Nginx stable
FROM nginx:1.20
WORKDIR /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
COPY --from=builder /app/build .
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
