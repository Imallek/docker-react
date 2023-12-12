# builder phase
FROM node:16-alpine as builder 

WORKDIR '/app'

COPY package.json .
RUN npm install

COPY . . 

RUN npm run build

# Run phase
FROM nginx
# Now we copy from the builder phase and the path to which we copy is mentioned in the nginx image on dockerhub 
# We are only taking the required files from the previous phase and dumping all the other things from the previous phase
COPY --from=builder /app/build /usr/share/nginx/html

