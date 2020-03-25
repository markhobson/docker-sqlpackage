# markhobson/sqlpackage

Docker image for [sqlpackage](https://docs.microsoft.com/en-us/sql/tools/sqlpackage-download) 18.4.

Available on [Docker Hub](https://hub.docker.com/r/markhobson/sqlpackage).

## Usage

To run sqlpackage:

```bash
docker run -it --rm markhobson/sqlpackage sqlpackage
```

To import bacpac file `/bacpacs/db.bacpac` to `Server=tcp:localhost,1433;Initial Catalog=db;User ID=sa;Password=password;`:

```bash
docker run -it --rm -v /bacpacs:/host --network=host sqlpackage \
    sqlpackage /a:Import /tsn:tcp:localhost /tdn:db /tu:sa /tp:password /sf:/host/db.bacpac
```
