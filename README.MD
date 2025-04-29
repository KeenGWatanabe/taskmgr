## Project Setup
npm install
npm install express
npm install mongodb

# setting up mongoDB
https://www.mongodb.com/docs/atlas/getting-started/#overview

In order to run the project, setup .env and set MONGO_URI variable equal to DB connection string.

Setup admin for app, user for demo taskmgr
name: user
pw: 1234

# db access role setup
![db access roles](/images/image.png)

ip address anywhere and whitelist for private access
![ip address setup](/images/ipaddr.png)


In order to avoid port collisions, in the source code port value is 5000
