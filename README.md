# ☁️ Workshop dbt + BigQuery

Projeto desenvolvido durante o **workshop de dbt com BigQuery da Jornada de Dados**, realizado **para fins de estudo e aprendizado**. O objetivo foi praticar a transformação de dados com o **dbt Core** usando o **Google BigQuery** como data warehouse, além de boas práticas de qualidade de código.

## 📌 Sobre o projeto

Este é um projeto de estudo, sem pretensão de uso em produção. Ele reúne a configuração do ambiente com Poetry, a conexão do dbt com o BigQuery via variáveis de ambiente e ferramentas de padronização de código (SQLFluff, Ruff e pre-commit).

## 🎯 Objetivos

- Configurar o dbt Core para trabalhar com o BigQuery
- Gerenciar credenciais e parâmetros de conexão com variáveis de ambiente
- Padronizar o código SQL com SQLFluff
- Automatizar verificações de qualidade com pre-commit
- Gerenciar dependências com Poetry

## 🛠️ Tecnologias

- **dbt Core** (`>=1.12.6`) e **dbt-bigquery** (`>=1.12.1`)
- **Google BigQuery**
- **Python** (`>=3.13`)
- **Poetry** — gerenciamento de dependências
- **SQLFluff** — lint e formatação de SQL (dialeto BigQuery)
- **Ruff** — lint e formatação de Python
- **pre-commit** — verificações automáticas antes de cada commit

## ⚙️ Configuração

### Pré-requisitos

- Python 3.13+
- [Poetry](https://python-poetry.org/docs/#installation)
- Um projeto no Google Cloud com BigQuery habilitado
- Uma *service account* com permissões no BigQuery e o arquivo de chave (JSON)

### Variáveis de ambiente

O `profiles.yml` lê todos os parâmetros de conexão do ambiente, então **nenhuma credencial fica salva no repositório**. 
