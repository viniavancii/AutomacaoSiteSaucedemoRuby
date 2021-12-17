Dado('que eu adiciono produtos ao carrinho') do  
    sleep 1                               
      steps %{
        Dado que me conecto ao Portal com "standard_user" e a senha "secret_sauce"
        Quando clico no botao Login
        Entao devo ser autenticado e vou me conectar ao portal
      }
      sleep 1
    

    @Comprar.adicionar_produtos_carrinho
    @Comprar.clicar_carrinho
  end                                                                             
              
     
  
  Quando('eu tentar fazer uma compra preenchendo os campos nome com {string}, sobrenome com {string} e zip com {string}') do |nome, sobrenome, zip|                                                                                                            
    @Comprar.clicar_btn_checkout
    @Comprar.preencher_dados_user(nome, sobrenome, zip)  
    @Comprar.clicar_btn_continue           
  end    
  
  
  Quando('eu clicar em Finish') do                                                
    @Comprar.clicar_btn_finish
  end 
                                                                     
  Então('devo ver uma mensagem de sucesso na compra') do                          
    mensagem = @Comprar.verificar_mensagem_compra
    expect(mensagem).to have_content 'CHECKOUT: COMPLETE!'  
  end   
                                                                                                                      
  Então('devo ver uma {string} de erro solicitando o preenchimento dos mesmos') do |mensagem|                                  
    @mensagem_erro2 = mensagem

   case @mensagem_erro2
        when "Error: First Name is required"
            erro2 = @Comprar.mensagem_erro_compra
            expect(erro2).to have_content 'Error: First Name is required'
        

        when "Error: Last Name is required"
            erro2 = @Comprar.mensagem_erro_compra
            expect(erro2).to have_content 'Error: Last Name is required'
        

        when "Error: Postal Code is required"
            erro2 = @Comprar.mensagem_erro_compra
            expect(erro2).to have_content 'Error: Postal Code is required'  
    end                                 
  end                                                                                                               
                                                                          