# Instalação do Ubuntu no WSL (Windows Subsystem for Linux) no Windows 11

## O que é o WSL?

O **WSL (Windows Subsystem for Linux)** permite executar distribuições Linux diretamente no Windows, sem a necessidade de máquinas virtuais ou dual boot.

---

## Pré-requisitos

Antes de iniciar, verifique se:

- Está utilizando o Windows 11.
- Possui permissões de administrador.
- Está conectado à internet.

---

## Passo 1 – Instalar o WSL

1. Abra o **Terminal do Windows** ou **PowerShell** como administrador.
2. Execute o comando:

```powershell
wsl --install
```

Esse comando habilita os recursos necessários para executar o WSL.

---

## Passo 2 – Reiniciar o Computador

Após a conclusão da instalação, reinicie o computador.

---

## Passo 3 – Instalar o Ubuntu pela Microsoft Store

1. Abra o menu **Iniciar**.
2. Pesquise por **Microsoft Store** e abra o aplicativo.
3. No campo de pesquisa da loja, digite:

```text
Ubuntu
```

4. Escolha a versão mais recente disponível (por exemplo, Ubuntu 24.04 LTS).
5. Clique em **Obter** ou **Instalar**.
6. Aguarde o download e a instalação.

---

## Passo 4 – Abrir o Ubuntu

Após a instalação:

1. Clique em **Iniciar**.
2. Procure por **Ubuntu**.
3. Abra o aplicativo.

Na primeira execução será exibida uma mensagem semelhante a:

```text
Installing, this may take a few minutes...
```

Aguarde a finalização.

---

## Passo 5 – Criar Usuário e Senha

Quando solicitado, informe:

### Nome de usuário

Exemplo:

```text
Enter new UNIX username:
```

Digite um nome de usuário:

```text
aluno
```

### Senha

Exemplo:

```text
Enter new UNIX password:
```

Digite uma senha e confirme.

> Durante a digitação da senha, nenhum caractere aparecerá na tela. Isso é um comportamento normal do Linux.

---

## Passo 6 – Confirmar a Instalação

No terminal do Ubuntu, execute:

```bash
uname -a
```

Para verificar a versão da distribuição:

```bash
lsb_release -a
```

---

## Passo 7 – Atualizar o Sistema

Atualize os repositórios:

```bash
sudo apt update
```

Atualize os pacotes instalados:

```bash
sudo apt upgrade -y
```

---

## Verificando a Versão do WSL

No Terminal do Windows:

```powershell
wsl --list --verbose
```

Exemplo:

```text
NAME      STATE           VERSION
Ubuntu    Running         2
```

A coluna **VERSION** deve exibir o valor **2**.

---

## Abrindo o Ubuntu Futuramente

Pelo menu Iniciar:

```text
Iniciar → Ubuntu
```

Ou pelo Terminal do Windows:

```powershell
wsl
```

ou

```powershell
wsl -d Ubuntu
```

---

## Solução de Problemas

### Verificar o status do WSL

```powershell
wsl --status
```

### Listar distribuições instaladas

```powershell
wsl --list
```

### Atualizar o WSL

```powershell
wsl --update
```

---

## Resultado Esperado

Ao concluir este procedimento, você terá:

- WSL instalado no Windows 11.
- Ubuntu instalado pela Microsoft Store.
- Ambiente Linux configurado e pronto para uso.
- WSL 2 funcionando integrado ao Windows.
