# Use an official Nginx image as the base image
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static files
RUN rm -rf ./*

# Copy the build output to the Nginx html
COPY build /manifest.json/usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 7000

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
