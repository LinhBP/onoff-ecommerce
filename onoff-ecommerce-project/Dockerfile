FROM node:16-alpine  as build-stage
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY ./ /app/
RUN npx prisma generate
CMD ["npm", "run", "dev"]
# FROM nginx:1.21.6-alpine
# COPY --from=build-stage /app/build/ /var/www
# COPY --from=build-stage /app/nginx/nginx.conf /etc/nginx/nginx.conf
# EXPOSE 80
# CMD ["nginx","-g","daemon off;"]