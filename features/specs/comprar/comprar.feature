#language: pt
# Esta feature aborda a regra de negocio de comprar
# do Portal
#-------------------------------------------------------------

@comprar
Funcionalidade: Comprar produtos no site 
    Sendo um cliente previamente cadastrado
    Eu quero adicionar produtos no carrinho
    Para que eu possa comprar no site Saucedemo

@compra_sucesso
    Esquema do Cenário: Comprar com sucesso
        Dado que eu adiciono produtos ao carrinho
        Quando eu tentar fazer uma compra preenchendo os campos nome com <nome>, sobrenome com <sobrenome> e zip com <zip>
        E eu clicar em Finish
        Então devo ver uma mensagem de sucesso na compra
            Exemplos:
                | nome         | sobrenome  | zip     |
                | "Vinicius"   | "Avanci"   | "12345" |

@compra_sem_sucesso
    Esquema do Cenario: Compra sem sucesso
        Dado que eu adiciono produtos ao carrinho
        Quando eu tentar fazer uma compra preenchendo os campos nome com <nome2>, sobrenome com <sobrenome2> e zip com <zip2>
        Então devo ver uma <mensagem> de erro solicitando o preenchimento dos mesmos

        Exemplos:
            | nome2 | sobrenome2 | zip2  | mensagem                         |
            | ""    | ""         | ""    | "Error: First Name is required"  |
            | ""    | "A"        | "1"   | "Error: First Name is required"  |
            | "A"   | ""         | "1"   | "Error: Last Name is required"   |
            | "A"   | "A"        | ""    | "Error: Postal Code is required" |


