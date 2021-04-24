## Criação da API
A API já está criada na pasta `www/api`. As seguintes instruções são uma demonstração prática de como ela foi criada
utilizando o assistente de geração de aplicações do Loopback, você pode encontrar mais informações em
https://loopback.io/doc/en/lb4/Getting-started.html .

#### Criando o APP:

```
# sudo npm i -g @loopback/cli
# lb4 app
? Project name: api
? Project description: Test API for AWS class
? Project root directory: api
? Application class name: ApiApplication
? Select features to enable in the project Enable eslint, Enable prettier, Enable mocha, Enable loopbackBuild, Enable vscode, Enable docker, Enable repositories, Enable s
ervices
? Yarn is available. Do you prefer to use it by default? No
# cd api
# npm i
```

#### Criando Datasource
```
# lb4 datasource
? Datasource name: mysql
? Select the connector for mysql:  MySQL (supported by StrongLoop)
? Connection String url to override other settings (eg: mysql://user:pass@host/db): 
? host: mysql.docker
? port: 3306
? user: root
? password: root
? database: dev_cursoaws
```

#### Criando o Model Produtos
```
# lb4 model     
? Model class name: Product
? Please select the model base class Entity (A persisted model with an ID)
? Allow additional (free-form) properties? No
Model Product will be created in src/models/product.model.ts

Let's add a property to Product
Enter an empty property name when done

? Enter the property name: id
? Property type: number
? Is id the ID property? Yes
? Is id generated automatically? Yes

Let's add another property to Product
Enter an empty property name when done

? Enter the property name: name
? Property type: string
? Is it required?: Yes

Let's add another property to Product
Enter an empty property name when done

? Enter the property name: category
? Property type: string
? Is it required?: Yes

Let's add another property to Product
Enter an empty property name when done

? Enter the property name: cost
? Property type: number
? Is it required?: No
? Default value [leave blank for none]: 0

Let's add another property to Product
Enter an empty property name when done

? Enter the property name: price
? Property type: number
? Is it required?: Yes

Let's add another property to Product
Enter an empty property name when done

? Enter the property name: 
   create src/models/product.model.ts
   update src/models/index.ts
```

#### Criando o Repositório
```
# lb4 repository
? Please select the datasource MysqlDatasource
? Select the model(s) you want to generate a repository for Product
? Please select the repository base class DefaultCrudRepository (Juggler bridge)
   create src/repositories/product.repository.ts
   update src/repositories/index.ts

Repository ProductRepository was/were created in src/repositories
```

#### Criando o Controller
```
# lb4 controller
? Controller class name: Product
Controller Product will be created in src/controllers/product.controller.ts

? What kind of controller would you like to generate? REST Controller with CRUD functions
? What is the name of the model to use with this CRUD repository? Product
? What is the name of your CRUD repository? ProductRepository
? What is the name of ID property? id
? What is the type of your ID? string
? Is the id omitted when creating a new instance? Yes
? What is the base HTTP path name of the CRUD operations? /products
   create src/controllers/product.controller.ts
   update src/controllers/index.ts

Controller Product was/were created in src/controllers
```

#### Migrando models para DB
```
npm run build
npm run migrate
```

#### Rodando a API
```
npm start
```

## Criando sua própria build de produção

Para gerar sua própria build de produção, faça as alterações em seu código e após testá-la, rode o comando:
```
./build-production.sh
```


