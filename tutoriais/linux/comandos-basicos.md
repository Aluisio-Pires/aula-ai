# Guia Básico de Linux para Iniciantes 🐧

Bem-vindo ao mundo Linux! Se você está vindo do Windows, imagine o Linux como um sistema onde você tem controle total. Aqui estão os comandos que você mais vai usar no dia a dia através do **Terminal**.

## 1. Navegação de Pastas

*   **`ls` (List):** Mostra todos os arquivos e pastas no local onde você está.
    *   *Exemplo:* `ls`
*   **`cd` (Change Directory):** Entra em uma pasta ou volta.
    *   *Exemplo (entrar):* `cd documentos`
    *   *Exemplo (voltar):* `cd ..`
*   **`pwd` (Print Working Directory):** Mostra o caminho completo de onde você está agora.

## 2. Manipulação de Arquivos e Pastas

*   **`mkdir` (Make Directory):** Cria uma nova pasta.
    *   *Exemplo:* `mkdir minha-pasta`
*   **`touch`:** Cria um arquivo vazio.
    *   *Exemplo:* `touch notas.txt`
*   **`rm` (Remove):** Apaga arquivos. **Cuidado:** No Linux não existe "Lixeira" no terminal; apagou, já era.
    *   *Exemplo:* `rm notas.txt`
    *   *Exemplo (pasta):* `rm -rf minha-pasta` (Apaga a pasta e tudo dentro dela).

## 3. Comandos de Super-Poderes

*   **`sudo` (SuperUser Do):** Executa um comando como administrador. O sistema vai pedir sua senha.
    *   *Dica:* Quando você digita a senha no terminal, **não aparece nada** (nem asteriscos). É normal, apenas digite e dê Enter.
*   **`apt`:** O instalador de programas do Ubuntu/Debian.
    *   *Exemplo:* `sudo apt update` (Atualiza a lista de programas).

## 4. Editores de Texto

*   **`nano`:** Um editor de texto simples dentro do terminal.
    *   *Como usar:* `nano arquivo.txt`
    *   *Para salvar:* Aperte `Ctrl + O` e depois `Enter`.
    *   *Para sair:* Aperte `Ctrl + X`.

---
*Dica de Ouro: Sempre que começar a digitar o nome de uma pasta ou arquivo, aperte a tecla **Tab**. O Linux vai completar o nome para você automaticamente!*
