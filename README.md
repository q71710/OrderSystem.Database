1. 以 `docker` 安裝 sql-server Express

```bash
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=1qaz2wsx!@QWASZX" -e 'MSSQL_PID=Express' -p 1433:1433 -d mcr.microsoft.com/mssql/server:2017-latest-ubuntu
```
2. 以 `visual studio` 開啟專案，並執行 `OrderSystem.Database.publish`