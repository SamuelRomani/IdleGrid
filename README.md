<div align="center">

<img src="tray.png" width="72" alt="IdleGrid">

# IdleGrid

**Quatro contas de um jogo idle em uma janela só.**

![Plataforma](https://img.shields.io/badge/Windows%20%C2%B7%20macOS%20%C2%B7%20Linux-0078D6)
![Electron](https://img.shields.io/badge/Electron-43-47848F)
[![Licença](https://img.shields.io/badge/licen%C3%A7a-MIT-blue)](LICENSE)

[English](README.en.md)

</div>

> Esta é a versão que roda a partir do código. Não tem executável pronto pra baixar: você pega o código, olha o que ele faz e roda você mesmo. Assim a confiança fica com você, não comigo.

> 🔰 **Nunca mexeu com isso?** Tem um passo a passo pra leigo aqui: **[TUTORIAL.md](TUTORIAL.md)** (ou o arquivo `COMO USAR.txt` dentro da pasta).

> ### 🔒 Seus dados de login ficam só no seu computador
> Login e senha são criptografados no seu próprio PC e nunca saem dele. Nada de servidor, nada de repositório. O código está todo aqui pra você conferir.

## O que é

Quatro contas rodando ao mesmo tempo, cada uma no seu quadrante e com sessão separada. Você salva o login uma vez e o app entra sozinho nas próximas. Se a sessão cair no meio do farm, ele loga de novo sem você precisar estar por perto. Ele não joga por você (não caça, não usa skill, não vende item) nem toca no captcha — só organiza as contas que você já tem, e opcionalmente aceita sozinho o convite de party, se você ligar essa opção (desligada por padrão).

Hoje o app aponta pro **huntera.com.br**, mas é um cliente genérico: o login automático funciona em qualquer formulário padrão (não depende de nada específico daquele jogo).

## Como rodar

Você precisa do Node.js instalado uma vez. Depois é rápido.

**1. Instale o Node.js**
Baixe a versão LTS em [nodejs.org](https://nodejs.org) e instale (é next, next, finish).

**2. Baixe este código**
Clique no botão verde **Code** aqui em cima e depois em **Download ZIP**. Extraia a pasta onde quiser. Quem usa Git pode clonar:

```bash
git clone https://github.com/SamuelRomani/IdleGrid.git
```

**3. Abra o app**
No Windows, dê dois cliques no arquivo **Abrir IdleGrid** (`.vbs`) dentro da pasta. Na primeira vez ele instala o necessário e abre sozinho; nas próximas abre na hora, sem janela preta. Quer um atalho? Botão direito nele, **Enviar para: Área de trabalho (criar atalho)**.

Também dá pra usar o **iniciar.bat**, mas ele mantém uma janela preta aberta e, se ela for fechada, o app fecha junto.

No macOS ou Linux, abra o terminal na pasta e rode:

```bash
bash iniciar.sh
```

Pronto. Entre ou crie uma conta em cada painel e, em "Treinadores", salve o login. Da próxima vez ele entra sozinho.

## O que ele faz

- Rode 1 a 4 contas, você escolhe quantos painéis abrir.
- Login automático, mesmo quando a sessão expira no meio do farm.
- Painel de Resumo: gold, level e gold/h de cada conta, lido da própria tela do jogo.
- Auto-aceitar party: aceita sozinho o convite de caçada em grupo (desligado por padrão, liga no menu ☰).
- Modo Eco que segura o uso de CPU sem atrapalhar o progresso.
- Avisa por notificação quando uma conta cai.
- Liga e desliga cada painel, zoom, tela cheia e atalhos de teclado.
- Rode seus próprios userscripts em cada painel (menu Scripts / Extras).
- Bandeja, iniciar junto com o Windows e idioma português, inglês ou espanhol.

## Segurança

- As senhas são criptografadas pelo `safeStorage` do Electron, que usa a API do sistema (DPAPI no Windows). Nunca saem do PC.
- Os painéis ficam presos ao domínio do jogo. Link externo abre no seu navegador, e a senha só é digitada na tela de login oficial.
- Câmera, microfone, localização e notificações do jogo ficam bloqueados.
- O captcha é sempre você que resolve. O app preenche e aperta Entrar quando os campos estão certos, mas nunca toca no "Confirme que é humano". Burlar detecção de bot não é a proposta.

## Por dentro

Cada painel é um `<webview>` do Electron com partição própria (`persist:conta1` até `conta4`), e é isso que mantém as contas isoladas e logadas entre aberturas. O Eco troca o `requestAnimationFrame` por uma versão mais lenta, e o login preenche pelo setter nativo do input (campos `autocomplete=username`/`current-password`, ou o primeiro campo de texto/senha do formulário como alternativa). Está tudo em `main.js`, `preload.js` e `index.html`, sem nada escondido.

## Licença

MIT. Projeto independente.
