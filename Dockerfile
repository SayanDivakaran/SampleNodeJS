#Runs apt install and apt-update to get the local packages
FROM node:16

# Create App Directory
WORKDIR /usr/src/app

# Copys the Files From the Node Package
COPY package.json ./
COPY app.js ./

#Runs Print Working Director Command
RUN pwd

#Runs node packet manager and installs the necessary APIs
RUN npm install

RUN ls -l

#Tells docker to expose port 8080
EXPOSE 8080

#Runs the command "NPM Start" 
CMD [ "npm", "start" ]

