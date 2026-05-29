# Instalando Docker Engine no WSL (Sem Docker Desktop) 🐳

Muitas pessoas instalam o Docker Desktop, mas ele é pesado. Vamos instalar o **Docker Engine** diretamente dentro do Linux (WSL), o que é muito mais rápido, profissional e evita cobranças de licença.

## Passo 1: Atualizar o Sistema

Abra seu terminal Ubuntu e digite:
```bash
sudo apt update
sudo apt upgrade -y
```

---

## Passo 2: Remover versões antigas (Limpeza)

Para garantir que não haja conflitos:
```bash
sudo apt remove docker docker-engine docker.io containerd runc
```

---

## Passo 3: Instalar dependências

```bash
sudo apt install -y ca-certificates curl gnupg lsb-release
```

---

## Passo 4: Adicionar a chave GPG oficial do Docker

Isso garante que o software que você está baixando é original e seguro.
```bash
sudo install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo chmod a+r /etc/apt/keyrings/docker.gpg
```

---

## Passo 5: Configurar o Repositório

```bash
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" \
  | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

---

## Passo 6: Instalar o Docker Engine e Plugins

```bash
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

---

## Passo 7: Usar Docker sem digitar 'sudo' sempre

```bash
sudo usermod -aG docker $USER
```

---

## Passo 8: Habilitar o 'Systemd' no WSL (IMPORTANTE)

O WSL, por padrão, não inicia o Docker sozinho. Vamos mudar isso:

1. Edite o arquivo de configuração:
   ```bash
   sudo nano /etc/wsl.conf
   ```
2. Cole o conteúdo abaixo dentro dele:
   ```ini
   [boot]
   systemd=true
   ```
3. Para salvar: `Ctrl + O`, `Enter`. Para sair: `Ctrl + X`.

---

## Passo 9: Reiniciar o WSL completamente

1. Feche o terminal do Ubuntu.
2. Abra o **PowerShell** no seu Windows e digite:
   ```powershell
   wsl --shutdown
   ```
3. Abra o Ubuntu novamente.

---

## Passo 10: Iniciar e Testar o Docker

Agora você pode usar o comando moderno de serviços:
```bash
sudo systemctl enable docker
sudo systemctl start docker
```

Teste se está funcionando:
```bash
docker run hello-world
```
*Se aparecer "Hello from Docker!", parabéns! Você instalou com perfeição.*

---

## Comandos Úteis para o dia a dia

*   **Ver containers rodando:** `docker ps`
*   **Ver todos os containers (até os parados):** `docker ps -a`
*   **Ver imagens baixadas:** `docker images`
*   **Parar todos os containers:** `docker stop $(docker ps -q)`
*   **Limpar arquivos inúteis:** `docker system prune -a`

---

## Dica: Verifique se você está no WSL 2

No PowerShell do Windows:
```powershell
wsl -l -v
```
A coluna **VERSION** deve ser **2**. Se for 1, seu Docker ficará lento ou não funcionará. Para mudar para 2:
```powershell
wsl --set-version Ubuntu 2
```
