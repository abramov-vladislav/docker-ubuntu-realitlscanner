# Сборка Docker-образа
```
docker build -t realitlscanner .
```
# Запуск контейнера
```
docker run --name ubuntu-realitlscanner realitlscanner
```

# Вход в контейнер
```
docker exec -it ubuntu-realitlscanner bash
```

# RealiTLScanner:

```
# Show help
./RealiTLScanner

# Scan a specific IP, IP CIDR or domain:
./RealiTLScanner -addr 1.2.3.4
# Note: infinity mode will be enabled automatically if `addr` is an IP or domain

# Scan a list of targets from a file (targets should be divided by line break):
./RealiTLScanner -in in.txt

# Crawl domains from a URL and scan:
./RealiTLScanner -url https://launchpad.net/ubuntu/+archivemirrors

# Specify a port to scan, default: 443
./RealiTLScanner -addr 1.1.1.1 -port 443

# Show verbose output, including failed scans and infeasible targets:
./RealiTLScanner -addr 1.2.3.0/24 -v

# Save results to a file, default: out.csv
./RealiTLScanner -addr www.microsoft.com -out file.csv

# Set a thread count, default: 1
./RealiTLScanner -addr wiki.ubuntu.com -thread 10

# Set a timeout for each scan, default: 10 (seconds)
./RealiTLScanner -addr 107.172.1.1/16 -timeout 5
```
