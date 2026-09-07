# Como usar o IdleGrid (versão sem instalador)

Guia para quem nunca mexeu com isso. Essa versão roda direto do código. Parece complicado, mas são 3 passos e a parte "difícil" você só faz uma vez.

## Passo 1: instalar o Node.js (só na primeira vez)

O Node.js é o "motor" que faz o app rodar.

1. Entre em **nodejs.org**
2. Baixe o botão verde grande escrito **LTS**
3. Abra o arquivo que baixou e vá clicando em **Avançar / Next** até o **Concluir / Finish**. Não precisa mudar nada, só ir clicando.

Pronto, isso não precisa fazer de novo.

## Passo 2: baixar o IdleGrid

1. Aqui em cima nesta página, clique no botão verde **Code**
2. Clique em **Download ZIP**
3. Vá na sua pasta **Downloads**, clique com o **botão direito** no arquivo `.zip` e escolha **Extrair tudo**. Vai aparecer uma pasta com o mesmo nome.

## Passo 3: abrir o app

1. Entre na pasta que apareceu
2. Dê **dois cliques** no arquivo **Abrir IdleGrid** (`.vbs`). Ele abre o app **sem janela preta**.
3. Na **primeira vez** ele demora um pouquinho (está baixando o que precisa) e abre sozinho. Nas próximas vezes abre rápido e sem terminal nenhum.

> Se o Windows mostrar uma tela azul ("O Windows protegeu seu computador"), clique em **Mais informações** e depois **Executar assim mesmo**. Isso acontece porque o app não tem assinatura paga, mas o código é aberto e você pode conferir tudo aqui.

**Quer um atalho na área de trabalho?** Clique com o **botão direito** no arquivo **Abrir IdleGrid** e escolha **Enviar para: Área de trabalho (criar atalho)**. Pronto, vira um clique só.

> O `iniciar.bat` continua na pasta e funciona igual, mas ele deixa uma janela preta aberta: se você fechar essa janela, o app fecha junto. Pelo **Abrir IdleGrid** isso não acontece.

**No Mac ou Linux:** abra o Terminal dentro da pasta e digite `bash iniciar.sh`.

## Passo 4: usar

1. Em cada quadradinho, entre na sua conta do huntera.com.br (ou crie uma)
2. O **"Confirme que é humano"** é sempre você que resolve. O app nunca faz isso no seu lugar.
3. Clique em **👤 Contas**, preencha e-mail e senha de cada conta e salve. Da próxima vez o app entra sozinho.

## Passo 5: recursos extras (todos opcionais, desligados por padrão)

Ficam no menu **☰ Opções**, no topo do app.

- **📊 Resumo**: abre uma barra lateral com gold, level, HP e gold/h de cada conta — só leitura, não clica em nada. Bom pra acompanhar o progresso sem precisar entrar em cada quadradinho.
- **🎉 Auto-aceitar convites**: um botão só que aceita sozinho o convite de entrar na party, o de começar a caçada em grupo, as trocas de caçada que o líder fizer no meio da sessão (é assim que o app "segue o líder": o convite se repete a cada troca) e o rateio de custos da hunt — esse último **desconta do seu gold**, então só ligue se confia em quem lidera a party.
- **🧹 Fechar diálogo perdido**: se o aviso "iniciar sem o time?" ficar preso na tela sem ninguém ter clicado nele, o app fecha sozinho escolhendo sempre **Cancelar** — nunca confirma nada.

Nenhum desses caça, usa skill ou vende item por você. O app continua só organizando as contas e resolvendo esses convites/avisos específicos, se você ligar.

## Para atualizar depois

Quando sair uma versão nova, aparece um botão **🔄 Atualização disponível** na barra de cima. No Windows, clicar nele já faz tudo sozinho (pede confirmação antes de fechar o app). Se não der por algum motivo, o jeito manual continua funcionando: baixe o ZIP de novo (Passo 2) e substitua a pasta antiga. Suas contas continuam salvas nos dois casos.

## Deu algum problema?

- **"iniciar.bat" abre e fecha na hora:** provavelmente o Node.js não foi instalado. Refaça o Passo 1.
- **Uma conta não entra sozinha:** abra os **👤 Contas** e confira se o e-mail e a senha daquela conta estão certos.
- **Trava ou fica lento:** ligue o **⚡ Eco** no menu **☰ Opções**, ele segura o uso de CPU.
