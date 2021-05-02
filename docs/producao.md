
# Preparando seu ambiente de produção

Faça login via SSH e edite o arquivo `/etc/environment` e substitua os parâmetros `????` com as credenciais da sua
infra-estrutura:
```
NODE_ENV=production
INSTANCE=production

HOST=0.0.0.0
PORT=3001

MYSQL_HOST=????
MYSQL_PORT=3306
MYSQL_USER=????
MYSQL_PASSWORD=????
MYSQL_DATABASE=uiq
```

Reinicie sua instância:
```
sudo reboot
```

Após reiniciar, faça login via SSH e execute os seguintes comandos:
```
sudo yum update -y
sudo yum install -y git
sudo mkdir /app
sudo chown -R ec2-user:ec2-user /app
cd /app
git clone https://github.com/UmInventorQualquer/curso-aws-pratico-producao.git uiq
cd uiq
./docker/production-init.sh
```

O container deve rodar pela primeira vez automaticamente, mas você pode inicializá-lo manualmente com o seguinte 
comando:
```
./docker/production-up.sh
```

Você pode parar o container usando o comando:
```
sudo docker-compose -f docker-compose.prod.yml stop
```






