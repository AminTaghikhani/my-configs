# Ubuntu 18.04
```bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
```
The operation should respond with an OK. If you receive an error indicating that gnupg is not installed, you can install it and its required libraries using the following command:
```bash
sudo apt-get install gnupg
```

```bash
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
```


## User Authentication
```javascript
use admin;
// db user
db.createUser(
    {
        user: "user",
        pwd: passwordPrompt(),
        roles: [
            {
                role: "readWrite",
                db: "dbName"
            }
            ]
    }
);
// admin user
db.createUser(
    {
        user: "admin",
        pwd: passwordPrompt(),
        roles: [
            {
                role: "userAdminAnyDatabase",
                db: "admin"
            },
            "readWriteAnyDatabase"
            ]
    }
);
// root user
db.createUser(
    {
        user: "root",
        pwd: passwordPrompt(),
        roles: [
            {
                role: "root",
                db: "admin"
            }
            ]
    }
);
```

``` bash
security:
    authentication: enable
```
