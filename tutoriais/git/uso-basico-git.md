# Usando Git para baixar Repositórios 📂

O Git é a ferramenta que programadores usam para baixar e enviar código. No seu caso, vamos usá-lo para "clonar" (baixar) o projeto para o seu computador.

## Passo 1: Instalar o Git

No terminal do WSL, digite:
```bash
sudo apt update
sudo apt install git -y
```

## Passo 2: Configurar o seu nome (Apenas uma vez)

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seuemail@exemplo.com"
```

## Passo 3: Clonar um projeto

Para baixar um repositório da internet (como o GitHub), você usa o comando `git clone` seguido do link.

*Exemplo:*
```bash
git clone https://github.com/usuario/projeto-exemplo.git
```

## Passo 4: Entrar na pasta do projeto

Após clonar, o Git cria uma pasta com o nome do projeto. Use o comando `cd` (que você aprendeu no tutorial de Linux) para entrar nela:
```bash
cd projeto-exemplo
```

---
*Dica: Se o repositório for privado, ele vai pedir seu usuário do GitHub e um "Token de Acesso" (que substitui a senha).*
