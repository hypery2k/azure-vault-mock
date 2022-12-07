# azure-vault-mock
Mock Azure Key Vault


Add in your `docker-compose.yaml`:
```
ms-vault-mock --certificate /app/cert.crt --private_key /app/cert.key --vault_dir /app/data --preload /app/conf
```

E.g.:
```
services:
  azure-vault:
    container_name: "azure-vault"
    image: hypery2k/azure-vault-mock:latest
    entrypoint: ["ms-vault-mock", "--vault_dir", "/app/data", "--preload", "/app/preload.json"]
    ports:
      - 10000:10000
    volumes:
      - ./.etc/vault:/app
```

Make sure that you have created the directories via:
```
mkdir -p .etc/vault/data
echo "{}" > .etc/vault/preload

```
