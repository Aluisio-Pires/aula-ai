# Evolution GO + n8n Automation Stack

Este projeto configura uma infraestrutura completa para automação de WhatsApp utilizando Evolution API, n8n, PostgreSQL e Redis, tudo orquestrado via Docker Compose.

## 🚀 Requisitos

- Docker
- Docker Compose

## 🛠️ Como Rodar

1. **Clonar o Repositório** (se aplicável)
2. **Configurar as Variáveis de Ambiente**
   O arquivo `.env` já foi pré-configurado para uso em `localhost`. Se desejar alterar chaves ou senhas, edite o arquivo:
   ```bash
   cp .env.example .env
   ```
3. **Subir os Containers**
   ```bash
   docker compose up -d
   ```
4. **Aguardar a Inicialização**
   Os serviços podem levar alguns segundos para estarem totalmente prontos (especialmente o banco de dados e as migrações do n8n).

## 🔗 Acessos Locais

- **Evolution API:** [http://localhost:8080](http://localhost:8080)
- **n8n:** [http://localhost:5678](http://localhost:5678)
- **Traefik Dashboard:** [http://localhost:8081](http://localhost:8081)

## 📡 Comunicação entre Containers (Webhooks)

Ao configurar Webhooks na Evolution API para enviar dados ao n8n, **não utilize `localhost`**. Use o nome do serviço Docker:

- **Correto:** `http://n8n:5678/webhook/your-id`
- **Incorreto:** `http://localhost:5678/webhook/your-id`

## 📦 Bibliotecas Customizadas (n8n)

Este setup já inclui a instalação automática do node customizado:
- `n8n-nodes-evolution-api`

Para gerenciar outros nodes, acesse **Settings > Community Nodes** na interface do n8n.

## 🗄️ Estrutura de Pastas

- `/postgres/init`: Scripts de inicialização do banco de dados.
- `/n8n/data`: Dados persistentes do n8n.
- `/postgres/data`: Dados persistentes do PostgreSQL.
- `/redis/data`: Dados persistentes do Redis.

## 🔒 Segurança

As senhas padrão no `.env.example` são para fins de desenvolvimento. Para produção, gere chaves seguras para:
- `GLOBAL_API_KEY` (Evolution)
- `N8N_ENCRYPTION_KEY` (n8n)
- `POSTGRES_PASSWORD`
- `REDIS_PASSWORD`
