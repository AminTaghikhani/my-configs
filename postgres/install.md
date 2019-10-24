# Ubuntu 18.04

Create the file /etc/apt/sources.list.d/pgdg.list and add a line for the repository
```bash
deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main
```

```bash
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
```

```bash
apt-get install postgresql-11
```