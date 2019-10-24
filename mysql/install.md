# install

```bash
sudo apt-get update
sudo apt-get install mysql-server
mysql_secure_installation
systemctl status mysql.service
```

# password
```bash
mysqladmin -u root password “newpassword”
```
or
```bash
mysqladmin -u root -h host_name password “newpassword”
```

# create user

```sql
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';
FLUSH PRIVILEGES;
```
