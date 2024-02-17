FROM node:21 as builder

WORKDIR /app

COPY ./ ./

RUN npm install 
RUN npm i -D @sveltejs/adapter-static

RUN npm run build 

FROM nginx:1.23

COPY --from=builder /app/build /usr/share/nginx/html
