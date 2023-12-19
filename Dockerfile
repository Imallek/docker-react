# builder phase
FROM node:16-alpine as builder 

WORKDIR '/app'

COPY package.json .
RUN npm install

COPY . . 

RUN npm run build

# Run phase
FROM nginx
# TO EXPSOE a port on elastic beanstalk, this EXPOSE instruction is just a communication to developers that this container
# needs a port map to port 80
# For your machine, just putting-in this instruction wont do anything automatically
# On Elasticbeanstalk, it works in a way that it would look into this docker file and would look for this instruction
EXPOSE 80
# Now we copy from the builder phase and the path to which we copy is mentioned in the nginx image on dockerhub 
# We are only taking the required files from the previous phase and dumping all the other things from the previous phase
COPY --from=builder /app/build /usr/share/nginx/html

