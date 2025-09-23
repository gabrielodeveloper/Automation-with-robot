***Settings***
# CONFIGURAÇÃO DA ESTRUTURA DO PROJETO.
# OS IMPORTES DE ARQUIVOS.

Library  RequestsLibrary
Library  Collections
Library  JSONLibrary

***Variables***
# A DECLARAÇÃO DE VARIAVEIS DE AMBIENTE OU DE MASSA DE TESTES.

***Keywords***
# A CONSTRUÇÃO DAS AÇÕES DO TESTE.

***Test Cases***
# A CONSTRUÇÃO DOS TESTES.

Efetuar login com sucesso
    [Documentation]  Cenário de autenticação do usuário com sucesso.
    &{headers}=  Create Dictionary  Content-Type=application/json

    &{body}=  Create Dictionary  
    ...     mail=sysadmin@qacoders.com
    ...     password=1234@Test

    Create Session  login  https://api-automacao.qacoders.dev.br/api/login  verify=False

    ${responseBody}=  POST on Session  Login  /  json=${body}  headers=${headers}

    
    Log     $(responseBody)