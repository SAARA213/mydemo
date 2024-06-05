#choosing the base image:
FROM nginx:latest

COPY build /index.html/usr/share/html

#exposing the application:
EXPOSE 3000

#Executing the application after creating image:
CMD ["npm", "start"]
