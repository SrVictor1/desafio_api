# DesafioApi

## Oque foi feito no app?

- **Extrair os dados de uma api externa**
- **Passa em um sort**
- **Depois export esses dados**

#### **O'Que foi usado?**

- HTTPoison
- Jason
- flow

#### **Como foi usado?**

> httpoison para a extração dos dados da api externa, jason para o tratamento dos dados e flow para melhorar a performace dos request

## Heroku Deploy:

[link.](https://polar-river-41230.herokuapp.com/)

### **Não utilize valores altos no heroku pois ele limita o uso**

## Quais são as rotas?

> GET: /api/v1/data

> GET: /api/v1/data/:id

> POST: /api/v1/data

![alt](https://i.imgur.com/66PWJ5q.png)

## Como executar localmente?

`Localmente você não tera limitação, mais o URL da API não estará no repositório.`

Você deve ter o Elixir, Erlang, Phoenix e PostgreSQL instalado em sua maquina!

```bash
  mix deps.get && mix ecto.reset && mix phx.server
```

_Se no terminal aparece, parabéns tudo foi instalado com sucesso!_

> [info] Running DesafioApiWeb.Endpoint with cowboy 2.9.0 at 0.0.0.0:4000
> [info] Access DesafioApiWeb.Endpoint at http://localhost:4000
