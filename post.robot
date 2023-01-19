*** Settings ***
Documentation        Executar método post da api e inserir dados na tabela do banco de dados

Library        RequestsLibrary

*** Test Case ***
Caso de Teste: Executar metodo post através do robot Framework
    #Create Session - Criando a sessão que irá chamar a url da api
    Create Session    PostAula    https://localhost:7019/

    # Content-Type diz para o client qual é o tipo de conteúdo que a resposta
    ${headers}    Create Dictionary        Content-type=application/json
    
    #body - Dados da classe da api
    ${body}       Create Dictionary        code=HHH123    country=HC    description=Pacote de testes Video Aula 2
    
    ${response}    Post Request        PostAula    package    headers=${headers}    data=${body}
    log    ${response}