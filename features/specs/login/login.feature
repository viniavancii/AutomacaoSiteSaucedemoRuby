#language: pt
# Esta feature aborda a regra de negocio de login e logout
# do Portal
#-------------------------------------------------------------

@login
Funcionalidade: Conectar ao Portal 
  Para que eu me conecte ao Portal
  Sendo o usuario cadastrado no site Saucedemo
  Posso ser autenticado quando inserir login e senha e me desconectar ao clicar em logout

    
@login_sucesso
    Cenario: Conectar e desconectar do Portal
        Dado que me conecto ao Portal com <login> e a senha <senha>
        Quando clico no botao Login
        Entao devo ser autenticado e vou me conectar ao portal
        E posso me desconectar ao clicar em Logout

            Exemplos:
            | login                     | senha          |
            | "standard_user"           | "secret_sauce" |
            | "problem_user"            | "secret_sauce" |
            | "performance_glitch_user" | "secret_sauce" |


@login_mal_sucedido
    Esquema do Cenario: Login mal sucedido
        Dado que me conecto ao Portal com <login2> e a senha <senha2>
        Quando clico no botao Login
        Entao o sistema deverá apresentar a mensagem <Mensagem>

        Exemplos:
            | login2             | senha2         | Mensagem                                                                    |
            | "Vinicius"         | "secret_sauce" | "Epic sadface: Username and password do not match any user in this service" |
            | "standard_user"    | "123"          | "Epic sadface: Username and password do not match any user in this service" |
            | "locked_out_user"  | "secret_sauce" | "Epic sadface: Sorry, this user has been locked out."                       |
            | ""                 | ""             | "Epic sadface: Username is required"                                        |
            | ""                 | "secret_sauce" | "Epic sadface: Username is required"                                        |
            | "locked_out_user"  | ""             | "Epic sadface: Password is required"                                        |