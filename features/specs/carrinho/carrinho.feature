#language: pt
# Esta feature aborda a regra de negocio de login e logout
# do Portal
#-------------------------------------------------------------

@carrinho
Funcionalidade: Adicionar/remover produto do carrinho
    Sendo um cliente previamente cadastrado
    Eu quero adicionar produtos no carrinho
    Para que eu possa comprar no site Saucedemo

Contexto: Carrinho
    Dado que eu esteja logado no sistema
    Quando eu adicionar produtos ao carrinho

@adicionar_carrinho
    Cenário: Adicionar produto do carrinho
        Então devo ver os produtos no carrinho

@remover_carrinho
    Cenário: Remover produto do carrinho
        E remove-los do carrinho
        Então devo ver o carrinho vazio