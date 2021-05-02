# Docker

## Docker
Baixe e instale o Docker em https://www.docker.com/

### Primeira execução
Se esta é a primeira vez que você está executando seu ambiente, utilize o seguinte comando para compilar e inicializar
seus containers.
```
./docker/dev-init.sh
```

### Compilando as Imagens
Abra o terminal e de dentro da pasta deste repositório execute:

Linux / MacOS:
```
./docker/dev-build.sh
```

Windows:
```
docker rm -f cursoaws_api
docker build -t cursoaws_api -f docker/loopback/Dockerfile .
docker rm -f cursoaws_mysql
docker build -t cursoaws_mysql -f docker/mysql/Dockerfile .
```

### Iniciando os containers
Abra o terminal e de dentro da pasta deste repositório execute:

Linux / MacOS:
```
./docker/dev-up.sh
```

Windows:
```
docker-compose --profile dev up
```

### Acessando o container do Loopback via SSH
Abra o terminal e de dentro da pasta deste repositório execute:

Linux / MacOS:
```
./docker/loopback/ssh.sh
```

Windows:
```
bash -c "clear && docker exec -it cursoaws_api bash"
```
