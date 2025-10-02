***Settings***
Resource    ../resources/config.resource
Resource    ../resources/variables.resource

***Keywords***
# A CONSTRUÇÃO DAS AÇÕES DO TESTE.

***Test Cases***
# A CONSTRUÇÃO DOS TESTES.

Efetuar login com sucesso
    [Documentation]  Cenário de autenticação do usuário com sucesso.
    ${headers}=  Create Dictionary  Content-Type=application/json

    ${body}=  Create Dictionary  
    ...    mail=${MAIL}
    ...    password=${PASSWORD}

    Create Session  login  ${ENV.url_api}${ENV.endponit_login}   verify=False
    

    ${responseBody}=  POST on Session  Login  /  json=${body}  headers=${headers}

    Log     $(responseBody)
