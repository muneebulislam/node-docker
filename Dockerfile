# Build the image
FROM node:15
WORKDIR /app
COPY package.json .
RUN npm install 
COPY . .
EXPOSE 3000
# Run the container
CMD ["npm","run","dev"]
# In command line write docker build -t node-app-image . 
# Then docker run -p 3000: 3000 -d -name node-app node-app-image
# check by typing docker ps


