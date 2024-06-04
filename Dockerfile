FROM nginx:alpine 
WORKDIR /usr/share/nginx/html/
COPY build /usr/share/nginx/html/
EXPOSE 8000
CMD ["nginx", "-g", "daemon off;"]
