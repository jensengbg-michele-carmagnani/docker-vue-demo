# Taka a CONTENX from docker library 
# Contain Node.js och en specifik linux-version 
FROM node:lts-alpine

# install simple http server for serving static content
RUN npm install -g http-server
#IMAGE
# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
# create a map inside the IMAGE
COPY package*.json ./

# install project dependencies
RUN npm install


# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

# build app for production with minification
# Take the DIST folder (inside the IMAGE)


#http-server använder port 8080
EXPOSE 8080
CMD [ "npm","run", "build" ]

# Now we have a CONTAINER
# When we start a CONTAINER we fire CMD-command :"http-server dist"