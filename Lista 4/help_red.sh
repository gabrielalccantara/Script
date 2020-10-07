#!/bin/bash

cat << EOF


>
Exemplo:

 $ ls > arquivosdodiretorio

No exemplo acima a saída do comando ls, que serve para listar os arquivos e pastas do diretório, será direcionada para o arquivo arquivosdodiretorio, e se este arquivo já existir será sobrescrito.

Outro exemplo:

$ ls >> arquivosdodiretorio

No comando acima a saída do comando ls, que serve para listar os arquivos e pastas do diretório, será direcionada para o arquivo arquivosdodiretorio, e se este arquivo já existir, a saída do comando será adicionada ao fim do arquivo.

2>
Redireciona os erros gerados pelo comando para um arquivo especificado e mesmo que não ocorram erros no comando, o arquivo é criado.

Exemplo:

$ ls arquivoquenaoexiste 2> erros
ou
$ ls arquivoquenaoexiste 2> /dev/null

No primeiro exemplo a saída do comando ls rá gerar um erro, pois não existe o arquivo especificado, este será enviado para o arquivo erros, se este arquivo não existir o arquivo será criado, mesmo que não haja erros.

No segundo exemplo os erros gerados serão direcionados para /dev/null,que é a mesma coisa de enviar para a terra do nunca ou para um buraco negro.

2>>
Faz a mesma coisa que o "2>" porém não sobrescreve o conteúdo só complementa.

Redirecionamentos de entrada:

<
Avisa ao shell que a entrada padrão não será o teclado e sim o arquivo especificado.

Exemplo:

$ mail < conteudodoemail

No exemplo acima especificamos que o email, no caso o corpo do email a ser enviado, é o conteúdo do arquivo conteudodoemail.

<<
Serve para indicar ao shell que um comando inicia na linha seguinte e termina quando encontrar uma linha que tenha <<.

Exemplo:

$ mail yros@yros.com.br << fim

No exemplo acima especificamos que o fim do email que será enviado para yros@yros.com.br será quando eu digitar fim.

Redirecionamentos especiais:

| (PIPE)
Este é o pipe, serve para enviar a saída de um comando para a entrada de outro, muito utilizado e de grande importância para o GNU.

Exemplo:

Queria saber se no dia 3 de outubro o usuário yros logou no servidor.

$ last yros | grep "oct 3"

No caso acima utilizo o comando last, que mostra as últimas sessões feitas ao servidor pelo usuário que digitei como parâmetro, no caso yros, a saída deste comando eu direcionei utilizando o pipe para o comando grep, que captura a saída padrão e filtra o conteúdo que determinarmos.

Podemos utilizar o pipe quantas vezes quisermos no mesmo comando, apenas temos que tomar cuidado com saída e a entrada para não conter erros na sintaxe.

Exemplo:

Quantas vezes o usuário yros logou no dia 3 de outubro?

$ last yros | grep "oct 3" | wc -l

No caso o "last yros" passará para o grep todas as vezes que o usuário logou, o grep filtrará e mostrará apenas as vezes que ele logou no dia 3 de outubro e o wc -l pegará a saída do grep e contará as linhas que o comando grep gerou.
EOF
