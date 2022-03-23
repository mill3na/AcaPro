//
//  multiline_strings.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 17/03/22.
//

import Foundation
var primeiroMenu = ["Guia do usuário", "Formatar referências", "Buscar eixos de pesquisa", "Tipos de referência", "Processo de desenvolvimento", "Sair"]
var fontes = ["Livro", "Revista ou artigo de periódico", "Artigo em evento", "Websites", "Monografia, dissertação ou tese", "Voltar"]

let acapro = """


  ========================================
||                                        ||
||                 ACAPRO                 ||
||     Auxiliar de produção acadêmica     ||
||                                        ||
  ========================================


"""

let bemVindo = """

Seja bem vindo ao guia do usuário. Aqui você encontra todas as informações pertinentes para fazer uso correto dessa aplicação.
    
    Você pode usar esse programa para te auxiliar nas seguintes coisas:
            - Consultar informações sobre o processo de desenvolvimento de produções acadêmicas
         
            - Buscar referências ou eixos de pesquisa, caso esteja travado ou sem inspiração
            
            - Formatar referências para sua produção acadêmica e falicitar sua vida (é só dar Ctrl + c e Ctrl + v, no final :)
            
            - Exibir fontes confiáveis para pesquisa acadêmica, caso você precise.


"""

let primeirosPassos = """
► Primeiros passos _______________

   Ao iniciar a execução, é importante que você esteja em um ambiente que aceite dados de entrada, pois o programa precisa de algumas informações para funcionar como deve.
   
   O primeiro menu te dá as seguintes opções:
               
       [1]: Guia do usuário
       [2]: Formatar referências
       [3]: Buscar eixos de pesquisa
       [4]: Tipos de referência
       [5]: Processo de desenvolvimento
       [5]: Sair
   
   A última opção do primeiro menu é "Sair", e isso interrompe a execução desse script, ok? Outra coisa a lembrar é: sempre acesse as opções pelo número antes dela.
   
   De acordo com a opção escolhida, um novo menu abrirá e/ou novas informações podem ser solicitadas. A lógica é basicamente a mesma para tudo que segue após isso.
   
   Sempre tente digitar as coisas certinho, sem erros de português, pois isso pode levar o código a caminhos que você não queria originalmente (ou comprometer os textos da sua referência.

   Agora, vamos ver cada opção, separadamente.


"""


let referencias = """

► Formatar referências _______________

   Ao chegar aqui, outro menu será exibido:

       [1]: Livro
       [2]: Revista ou artigo de periódico
       [3]: Artigo em evento
       [4]: Websites
       [5]: Monografia, dissertação ou tese.

       Cada opção escolhida levará à uma nova parte do programa, que solicitará informações diferentes. Sempre se atente ao tipo de entrada que o programa solicita, certo? Elas podem ser do tipo inteiro ou do tipo string (texto). Por exemplo, ao solicitar a formatação de uma referência retirada de um livro, o programa perguntará a quantidade de autores, e você deve digitar um inteiro. Logo depois, dependendo da resposta, ele pergunta o nome dos autores, e você deve digitar uma String (texto).
       
       Quando o nome do autor for solicitado, digite somente o primeiro, e não o nome completo. O sobrenome será solicitado em seguida.

       O AcaPro é preparado para ajustar alguns pequenos detalhes do seu texto, como a utilização da primeira letra maiúscula, mas erros de digitação devem ser evitados, pois não temos corrigir nomes próprios ou de revistas, por exemplo, certo? Sempre tome o cuidado de oferecer as informações corretas.


"""

let eixosPesquisa = """

► Buscar eixos de Pesquisa _______________

   Nesta seção, o AcaPro irá te sugerir algumas grandes áreas e palavras chave que podem ajudar a encontrar um bom tema. Depois da exibição de sugestões, o programa é encerrado.


"""


let infProcessoDesenvolvimento1 = """

► Informações sobre o processo de desenvolvimento _______________

   Desenvolver trabalhos acadêmicos é uma coisa bem séria e importante, mas nem sempre é fácil começar. Então, esse mini guia vai te mostrar como facilitar esse processo.
   
   A primeira coisa a se lembrar é: tudo é formal e tem que ser em um formato específico, delimitado pela ABNT. "Ah, mas esse meu trabalho nem precisa.", você pode me dizer. Ok, mas em algum momento pode ser que precise, e quanto mais você praticar, mais fácil vai ser. Então, que tal um mini passo a passo?
    
    
"""


let infProcessoDesenvolvimento2 = """
0. Passo mais importante de todos os tempos

    - Escolha um bom orientador. Um BOM MESMO.
    - Tenha uma rede de apoio. Você (muito) provavelmente vai precisar, em algum momento.


1. Saiba o que você está escrevendo.

É uma resenha? Um artigo? Uma dissertação? Um relatório?
Defina o tipo de texto e busque as referências certas para que ele seja bem estruturado, combinado? Se tem dúvida, pergunte ao seu professor orientador.

É importante também buscar as plataformas certas para formatar seu texto. Word, Overleaf, Docs... Não apele para um comum que peque nas funcionalidades, escolha um bom editor de texto para não ter dor de cabeça no final.


2. Define teu tema sem medo de ser feliz!

Faz pesquisa, vê notícia, observa os conteúdos que são mais comentados (e que têm mais referência) e pensa em uma grande área. Tenta relacionar com o que você gosta de estudar que fica muito mais massa. Temas multidisciplinares são muito bons também, mas define tua pesquisa direitinho, tá? Vai se ambientando primeiro e, dependendo do que você encontrar / se identificar, define um tema, e, depois, um subtema.

O subtema é legal pra afunilar mais a tua pesquisa! Se isso não estiver explícito no tema (nicho, afunilamento), um subtema é ideal pra deixar bem claro.


"""

let infProcessoDesenvolvimento3 = """
3. Hora de começar a escrever.

Achou informações sufucientes pra se embasar (pelo menos um pouco) e já decidiu tudo que precisava ser decidido? Então, não tem mais o que temer. Começa a escrever tendo em mente tudo aquilo que foi pesquisado e sem medo de voltar a consultar tuas fontes de novo. Mas, pelo amor de tudo que é mais sagrado nesse mundo, não comete plágio! Cuidado com essas referências, coloca os créditos direitinho, porque não é nada legal pegar o trabalho dos outros, beleza?

Importante se atentar à formatação desde o início também (pelo menos o basicão), pra não te estressar muito no final.

Revisa o texto 5 mil vezes se for preciso (e vai ser preciso / vai valer a pena), e sempre conte com a ajuda do seu orientador.


4. Últimos detalhes pro lançamento do foguete.

Aquela revisada básica e tal. Cansou muito, enjoou do teu próprio trabalho? Pede pra um amigo de confiança (e crítico na medida) ler pra dar uma força. Conte com a sua rede de apoio.


5. Tudo certinho? Então massa demais. Parabéns, você conseguiu!!!


"""

let sair = """

► Sair _______________
   Escolher essa opção encerra o programa. Esperamos que você volte a usá-lo!


"""


let areasDePesquisa = """

Algumas das áreas de pesquisa que você pode tentar se aprofundar:
    - Biologia e saúde
    - Cultura e educação
    - Energia e recursos naturais
    - Humanidade e ética
    - Meio ambiente e biodiversidade
    - Materiais, processos e dispositivos
    - Sociedade e desenvolvimento
    - Tecnologia da informação e comunicação.

Lembre-se: é totalmente permitido misturar essas áreas. A multidisciplinaridade é uma característica massa dos bons projetos, quando bem embasada. :)

Outro ponto a se pensar: é super importante que os seus projetos / soluções sejam acessíveis. E sempre, sempre pense nos impactos ambientais.

Não esqueça das referências! <3


"""

let palavrasChave = """

Olá! Se você está buscando por referências de palavras chave, vamos entender que você já tem uma área de trabalho, tudo bem? Dessa forma, você pode tentar pesquisar assim: [sua área de pesquisa] +
    - ... notícias
    - ... tecnologias
    - ... problemáticas
    - ... google acadêmico
    - ... imagens
    - ... acessibilidade
    - ... meio ambiente
    - ... últimas atualizações / pesquisas
    - ... estudo de caso

Lembre-se: a pesquisa com palavras chave em inglês oferece muito mais resultados! O Google Acadêmico é seu aliado mais importante agora, então use sem medo.

Outra ferramenta é o Google Trends, que informa quais assuntos de um determinado tópico estão sendo mais pesquisados no mundo todo. Caso queira, você também pode alterar os filtros de localização e exibir resultados só para o Brasil, por exemplo.


"""


let tiposDeReferencia1 = """

Olá! Esta aplicação aceita os seguintes tipos de referência:
1. Livro:
    volume que contém textos, imagens de modo a formar uma publicação que pode ser impressa ou online. Pode ter um ou muitos autores, subtítulo e edição.

2. Revista ou artigo de periódico:
    um periódico é uma publicação em papel ou meio eletrônico que é publicada em eventos que acontecem periodicamente, ou seja, em determinados intervalos de tempo. As revistas também são periódicas, mas tem formatações diferentes e servem para públicos alvos diferentes. Pode ter conteúdos jornalísticos, de entretenimento ou informativos.

3. Artigo em evento:
    publicações em eventos, que divulgam o nome do evento e contribuem para a disseminação de conhecimento. Não necessariamente são periódicos e geralmente recebem o nome de "anais de eventos".

"""

let tiposDeReferencia2 = """

4. Websites:
    página web que pode apresentar conteúdos dos mais variados assuntos e eixos de pesquisa. O conjunto de todos os sites / páginas web do domínio HTTP ou HTTPS formam a World Wide Web.

5. Monografia, dissertação ou tese:
    trabalhos de conclusão de curso, em que a monografia é um de sentido amplo e a dissertação (que normalmente é apresentada no mestrado) e tese (nível de doutorado) são de sentido estrito.

Para formatar esses tipos de referência, precisamos de algumas informações como nome do(s) autore(s), ano de publicação, título, subtítulo etc. Quando precisar formatá-las, tenha isso em mãos, beleza?

Bons sites pra você usar como fonte:
- SciELO
- ERIC
- BDTB
- Portal de periódicos da CAPES
- Google Acadêmico
- Dialnet
- WorldWideSciene
- RefSeek
- BASE
"""

let referencia = [tiposDeReferencia1, tiposDeReferencia2]

let processoDesenvolvimento1 = """
    Desenvolver trabalhos acadêmicos é uma coisa bem séria e importante, mas nem sempre é fácil começar. Então, esse mini guia vai te mostrar como facilitar esse processo.
        
    A primeira coisa a se lembrar é: tudo é formal e tem que ser em um formato específico, delimitado pela ABNT. "Ah, mas esse meu trabalho nem precisa.", você pode me dizer. Ok, mas uma hora vai precisar, e quanto mais você praticar, mais fácil vai ser, concorda? Então, o primeiro passo é:
     
    ! Saiba o que você está escrevendo !

    É uma resenha? Um artigo? Uma dissertação? Um relatório?
    Defina o tipo de texto e busque as referências certas para que ele seja bem estruturado, combinado? Se tem dúvida, pergunte ao seu professor orientador.
             
    É importante também buscar as plataformas certas para formatar seu texto. Word, Overleaf, Docs... Não apele para um comum que peque nas funcionalidades, escolha um bom editor de texto para não ter dor de cabeça no final.
             
    Depois disso, vem o próximo passo, que é...
            
"""

let processoDeDesenvolvimento2 = """

    ! Pesquisa e definição de temas !
            
    Comece a pesquisar sobre os assuntos ou nichos que você mais se indentifique (ou que façam sentido para o contexto em que você está inserido. Depois de uma fundamentação teórica bem massa, você pode começar a fazer perguntas sobre esse tema.
            - Por que isso funciona?
            - Como uma ideia tão pequena se tornou tão complexa?
            - O que, de fato, eu estou pesquisando?
            - Onde eu quero chegar com essa pesquisa?
            - Que problemáticas envolvem esse tema?

    Ao compreender os problemas do tema de sua pesquisa, você pode começar a pensar em soluções: faça um brainstorm bem livremente e não descarte ideias. Depois disso, cabe uma nova pesquisa e análises bem detalhadinhas pra ver a viabilidade das soluções, e aí é com você :)

    Se estiver escrevendo sem focar em problemas e soluções (digamos, comparativos da literatura), o Google Acadêmico é uma ótima opção. Outros bons sites podem servir como fonte, e estão na seção Tipos de referência.

"""

let guiaDoUsuario = [acapro, bemVindo, primeirosPassos, referencias, eixosPesquisa, infProcessoDesenvolvimento1, infProcessoDesenvolvimento2, infProcessoDesenvolvimento3, sair]

let desenvolvimento = [processoDesenvolvimento1, processoDeDesenvolvimento2]
