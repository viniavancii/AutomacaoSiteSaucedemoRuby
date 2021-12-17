Dado('que eu esteja logado no sistema') do
    steps %{
        Dado que me conecto ao Portal com "standard_user" e a senha "secret_sauce"
        Quando clico no botao Login
        Entao devo ser autenticado e vou me conectar ao portal
      }
end
  
Quando('eu adicionar produtos ao carrinho') do
    @Carrinho.adicionar_carrinho
end
  
Então('devo ver os produtos no carrinho') do
    verificar_carrinho = @Carrinho.verificar_carrinho
    expect(verificar_carrinho).to have_content 'Sauce Labs Backpack'
end
  
Quando('remove-los do carrinho') do
    @Carrinho.remover_carrinho
end
  
Então('devo ver o carrinho vazio') do
    vazio = @Carrinho.verificar_vazio
    expect(vazio).to have_content ''
end