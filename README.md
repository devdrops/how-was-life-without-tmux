# Como Eu Conseguia Viver Antes De Conhecer O tmux

Apresentação onde descrevo como a minha vida mudou após conhecer o tmux e como aprender cada vez mais sobre o assunto me fez satisfeito (finalmente!).

## Rascunho!

### Qual é a mensagem que eu quero passar com essa talk?

> Mostrar, sem tentar convencer ninguém, o que as pessoas podem fazer com tmux.

### Lista de Tópicos

- Introdução
  [X] Título
  [X] Apresentação pessoal
  [X] Outros terminais que usei:
    [X] iTerm, guake, terminator, tilix (antigo terminix)
    [X] Enfim, encontrei o tmux!
  [X] Mas o que é tmux?
    [X] Terminal Multiplexer
      [X] Gera diversos terminais (ou janelas) únicos e individuais que permitem a execução individual de programas.
    [X] Manter aplicações em execução, mesmo se fechar o terminal
    [X] Roda em qualquer terminal
    [X] Prático (depois que se pega o jeito, é difícil viver sem)
    [X] Hackudo Over 9000
- Desenvolvimento
  [X] Instalação
    [X] Checar versão
  [X] Sessões (Sessions)
    [X] Imagem inception: Terminal > Session > Windows > Panes
    [X] Prática 1: Criando uma Sessão
      1. `tmux new -s nova-sessao`
      2. Identificação na Barra de Status
      3. Fechando a Sessão
    [X] Prática 2: Criando, saindo e voltando a uma Sessão (detaching and attaching)
      1. `tmux new -s htopzera`
      2. `htop`
      3. `<prefix>-d`
      4. Listar Sessões
      5. `tmux attach -t htopzera`
  [X] Janelas (Windows)
    [X] Assim como os carros são como as lanchas, as motos são como os jetskis e pedestres são como os banhistas, as Janelas são as abas de uma Sessão.
    [X] Prática 3: Criando uma Janela
      1. `tmux new -s vista`
      2. Uma janela foi criada
      3. `<prefix>-c`
      4. Exibir informação na Barra de Status
    [X] Prática 4: Nomes das Janelas
      1. `<prefix>-c` para criar uma nova Janela
      2. `curl parrot.live` ou `htop'
      3. Mostrar que o nome da Janela é atualizado com o nome do programa em execução.
      4. `<prefix>-,` para abrir prompt para nome da Janela e renomear todas, uma por uma.
    [X] Prática 5: Navegação entre Janelas
      1. Modo 1: `<prefix>-n` e `<prefix>-p`
      2. Modo 2: `<prefix>-index`
      3. Modo 3: `<prefix>-w` para abrir menu de Janelas
      4. Modo 4: `<prefix>-f` para pesquisar pelo nome da Janela
    [X]  Prática 6: Fechar a Janela
      1. `<prefix>-c`
      2. `<prefix>-&`
  [X] Painéis (Panels)
    [X] Menor unidade do tmux
    [X] Prática 7: Divisão vertical
      1. `<prefix>-c`
      2. `<prefix>-%`
    [X] Prática 8: Divisão Horizontal
      1. `<prefix>-"`
    [X] Prática 9: Exibir Painéis
      1. `<prefix>-q`
    [X] Prática 10: Girar Painéis
      1. `<prefix>-Space`
    [X] Prática 11: Zoom (destaque) no Painel
      1. `<prefix>-z` para dar zoom
      2. `<prefix>-z` para sair do zoom
    [X] Prática 12: Scroll
      1. `ls -la /`
      2. `<prefix>-[`
      3. `q` para sair
    [X] Prática 13: Sincronizar comandos nos Painéis de uma Janela
      1. Abrir uma Janela
      2. Criar vários painéis
      3. `<prefix>-:` para abrir o prompt de comando do tmux
      4. `setw synchronize-panes`
      5. `echo 'SHAZAM!!!' | cowsay`
      6. `setw synchronize-panes`
      7. `<prefix>-&`
    [X] Configuração
      [X] NEEEEEERDS!!
      [X] Arquivo .tmux.conf
      [X] O que é _set_ e _bind_?
      [X] Prática 14: Configurações mais comuns
        1. `bind r source-file ~/.tmux.conf \; display "I know Kung Fu!"`
        2. Mudar o prefixo
        3. Índices das janelas (arrays start at zero, ALWAYS)
        4. Nome da Sessão na Barra de Status
        5. Identificação nas bordas dos Painéis
      [X] Prática 15: Lista de Keybindings
        1. `<prefix>-?`
    [X] O que mais?
      - Plugins
      - Pair programming
        - tmate
      - Documentação
      - tmux + vim, um caso de amor
[ ] Conclusão
  [ ] Uma ferramenta poderosa
  [ ] Precisa de um pouco de dedicação, mas os resultados compensam
  [ ] Logo logo você vai ficar doido pra ler o .tmux.config dos outros XD
  [ ] Se desafie! Uma ferramenta nova pode te mostrar outro ângulo para resolver os problemas 
- Referências
- Agradecimentos

