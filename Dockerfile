# Build the image
FROM node:15
WORKDIR /app
COPY package.json .
ARG NODE_ENV
# RUN npm install --only=production
RUN if [ "$NODE_ENV" = "development" ]; \
     then npm install; \
     else npm install --only=production; \
    fi
COPY . .
ENV PORT=3000
EXPOSE $PORT
# Run the container
# CMD ["npm","run","dev"]
# In command line write docker build -t node-app-image . 
# Then docker run -p 3000: 3000 -d -name node-app node-app-image
# check by typing docker ps
CMD ["node","index.js" ]


