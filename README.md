# markhobson/sqlpackage

Docker image for [sqlpackage](https://docs.microsoft.com/en-us/sql/tools/sqlpackage-download) 18.4.

Available on [Docker Hub](https://hub.docker.com/r/markhobson/sqlpackage).

## Usage

To run sqlpackage:

```bash
docker run -it --rm markhobson/sqlpackage
```

To import bacpac file `/backups/db.bacpac` to local database `db` with username `sa` and password `password`:

```bash
docker run -it --rm -v /backups:/data --network=host sqlpackage \
    /a:Import /tsn:tcp:localhost /tdn:db /tu:sa /tp:password /sf:/data/db.bacpac
```
