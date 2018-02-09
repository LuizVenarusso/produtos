# README


## API

GET **/api/categories** (Retorna todas categorias)
> ###### Sucesso
> status 200 <br>
```json
{
   "categories":[
      {
         "id":1,
         "name":"Hospedagem",
         "description":"Domínio grátis e sites ilimitados"
      },
      {
         "id":2,
         "name":"Crie seu site",
         "description":"Criador de site"
      }
   ]
}
```
> ###### Falha
> status 404 <br>
```json
{
   "message":"Nenhuma categoria encontrada"
}
```

GET **/api/categories/[:category_id]** (Retorna uma categoria específica)
>###### Sucesso
> status 200 <br>
```json
{
   "categories":{
      "id":1,
      "name":"Hospedagem",
      "description":"Domínio grátis e sites ilimitados"
   }
}
```

>###### Falha
> status 404 <br>
```json
{
   "message":"Nenhuma categoria encontrada"
}
```

GET  **/api/categories/:category_id/products** (Retorna todos os produtos de uma categoria)
>###### Sucesso
> status 200 <br>
```json
{
   "categories":{
      "id":"1"
   },
   "products":[
      {
         "id":1,
         "name":"Hospedagem",
         "description":"Hospedagem ilimitada",
         "product_key":"HOSP123",
         "product_category_id":1,
         "contract":"contrato123",
         "icon_url":"/system/products/icons/000/000/001/thumb/img.png?1518205431"
      },
      {
         "id":2,
         "name":"Hospedagem",
         "description":"Hospedagem básica",
         "product_key":"HOSP124",
         "product_category_id":1,
         "contract":"contrato124",
         "icon_url":"/system/products/icons/000/000/002/thumb/img.png?1518205431"
      }
   ]
}
```

>###### Falha
> status 404 <br>
```json
{
   "categories":{
      "id":1
   },
   "products":[
   ]
}
```

<br>
GET **/api/products/:product_id/product_plans** (Retorna todos os planos de um determinado produto)
>###### Sucesso
> status 200 <br>
```json
{
   "products":{
      "id":1
   },
   "plans":[
      {
         "id":1,
         "name":"Email Premium",
         "product_id":1
      },
      {
         "id":2,
         "name":"Email Basico",
         "product_id":1
      }
   ]
}
```
>###### Falha
> status 404 <br>
```json
{
   "products":{
      "id":1
   },
   "plans":[
   ]
}
```
GET **/api/categories** (Retorna todas categorias)
> ###### Sucesso
> status 200 <br>
```json
{
   "categories":[
      {
         "id":1,
         "name":"Hospedagem",
         "description":"Domínio grátis e sites ilimitados"
      },
      {
         "id":2,
         "name":"Crie seu site",
         "description":"Criador de site"
      }
   ]
}
```
> ###### Falha
> status 404 <br>
```json
{
   "message":"Nenhuma categoria encontrada"
}
```

GET **/api/product_plans/:id** (Retorna um plano específico)
>###### Sucesso
> status 200 <br>
```json
{
   "plans":{
      "id":1,
      "product_id":1,
      "name":"Hospedagem Ilimitada I"
   }
}
```

>###### Falha
> status 404 <br>
```json
{
   "message":"Nenhum plano encontrado"
}
```


GET **/api/products/:id** ( Retorna produto específico )

>###### Sucesso
> status 200 <br>
```json
{
   "products":{
      "id":1,
      "name":"Hospedagem",
      "description":"Hospedagem ilimitada",
      "product_key":"HOSP123",
      "product_category_id":1,
      "contract":"contrato123",
      "icon_url":"/system/products/icons/000/000/001/thumb/img.png?1518205865"
   }
}
```

>###### Falha
> status 404 <br>
```json
{
   "message":"Nenhum produto encontrado"
}
```

GET **/api/products/[:id_product]/plans** (Retorna todos os planos de um produto)

>###### Sucesso
> status 200 <br>
```json
{
  "plans":"1",
  "prices":[
     {
        "id":1,
        "product_plan_id":1,
        "value":"100.0",
        "periodicity":{
           "id":1,
           "name":"Anual",
           "period":12
        }
     },
     {
        "id":2,
        "product_plan_id":1,
        "value":"100.0",
        "periodicity":{
           "id":2,
           "name":"Mensal",
           "period":1
        }
     }
  ]
}
```
>###### Falha
> status 404 <br>
```json
{
   "plans":{
      "id":1
   },
   "prices":[
   ]
}
```

GET **/api/plans/[:id_plan]/prices** (Retorna todos os preços de um plano)
