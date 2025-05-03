# check node version
node -v

## install dependencies
npm install express
npm install mongodb
npm install mongoose
npm install dotenv

# setting up mongoDB
https://www.mongodb.com/docs/atlas/getting-started/#overview

acct: techupz
cluster: dbName.tasks
user:user
pw:**** 
# youtube MongoDB setup at 40:00 - 47:50 min
https://www.youtube.com/watch?v=jIsj0upCBAM&t=2400s

# youtube connect to DB at 56:23 min - 1:08 hr
https://www.youtube.com/watch?v=jIsj0upCBAM&t=3383s

# database verification on Mongo Atlas
https://youtu.be/9CutwMKaRKI
In order to run the project, setup .env and set MONGO_URI variable equal to DB connection string.

Setup admin for app, user for demo taskmgr
name: user
pw: 1234

# db access role setup
![db access roles](/images/image.png)

ip address anywhere and whitelist for private access
![ip address setup](/images/ipaddr.png)


In order to avoid port collisions, in the source code port value is 5000
# mount .env at Runtime (local development)
docker run --env-file .env rger/taskmgr:1.0

Option 3: Use Docker Secrets (For production)
For sensitive data (e.g., passwords):

yaml
# In docker-compose.yml
services:
  app:
    secrets:
      - mongodb_uri
secrets:
  mongodb_uri:
    file: ./secrets/mongodb_uri.txt  # Store your URI here

    