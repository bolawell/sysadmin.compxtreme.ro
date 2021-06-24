# sysadmin.compxtreme.ro docker-compose

## How to run this

Clone this repository and create a new `docker-compose.secrets.yml` with the
following content:

```yaml
version: "3.3"
services:
  sysadmin.compxtreme.ro-mysql:
    environment:
      MARIADB_DATABASE: sysadmin_compxtreme_ro
      MARIADB_USER: sysadmin_compxtreme_ro
      MARIADB_PASSWORD: very-strong-password
      MARIADB_ROOT_PASSWORD: another-very-strong-password
```

After creating the file you can start the whole thing with:

```bash
docker-compose -f docker-compose.yml -f docker-compose.secrets.yml up -d
```
