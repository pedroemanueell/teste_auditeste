#language: pt

Funcionalidade: Realizar o login no site
    Eu como usuario
    Quero realizar login no site
    Para que eu possa ver o usuario logado

Contexto: 
    Dado que eu esteja na home do site

@login
Esquema do Cenário: Realizar o login no site
    
    Quando eu fizer o login '<email>''<senha>'
    Entao eu tenho que ver o usuario logado

    Exemplos: 
        | email                           | senha     | 
        | veron.oliveira@auditeste.com.br | auditeste | 

@login_invalido
Esquema do Cenário: Realizar login com dados invalidos
    
    Quando eu inserir os dados invalidos '<email>','<senha>' 
    Então eu vejo a '<mensagem>' de erro 

    Exemplos:
        | email                           | senha     | mensagem              |
        | pedroEmanueell@gmail.com        | 12233     | E-mail não Localizado |
        | veron.oliveira@auditeste.com.br | 12233     | Senha não Localizada  | 
        
@campos
Esquema do Cenário: Validar campos do login
    Quando eu deixar o campo em branco '<email>', '<senha>'
    Então eu vejo a '<mensagem>' de alerta

Exemplos:
        | email                           | senha     | mensagem              |
        |                                 | 12233     | Digite o E-mail       |
        | veron.oliveira@auditeste.com.br |           | Digite a Senha        | 
        