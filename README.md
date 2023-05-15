# Locust tests de charge

## Deployement

```bash

$ docker compose up --force-recreate --build -d

$ docker exec -it python-dev-python-1 bash

$ locust --web-port=3000 --host=https://pokeapi.co/api/v2

```

## Tests

Go to 127.0.0.1:3000 or your vps adress : 3000

