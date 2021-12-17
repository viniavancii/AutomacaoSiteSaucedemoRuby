Dado('que me conecto ao Portal com {string} e a senha {string}') do |user, senha|   
    @LoginPage.visitar_portal
    @LoginPage.inserir_dados_login(user, senha)       
end    
                                                                                        
Quando('clico no botao Login') do                                                     
    @LoginPage.clicar_login       
end                                                                                   
                                                                                        
Entao('devo ser autenticado e vou me conectar ao portal') do                          
   titulo = @LoginPage.validar_pagina_inicial
   expect(titulo).to have_content 'PRODUCTS'
end                                                                                   
                                                                                        
Entao('posso me desconectar ao clicar em Logout') do                                  
    @LoginPage.sair_portal       
end  

Entao('o sistema deverá apresentar a mensagem {string}') do |mensagem|
    @mensagem_erro = mensagem

   case @mensagem_erro
        when "Epic sadface: Username and password do not match any user in this service"
            erro = @LoginPage.mensagem_erro_login
            expect(erro).to have_content 'Epic sadface: Username and password do not match any user in this service'
        

        when "Epic sadface: Sorry, this user has been locked out."
            erro = @LoginPage.mensagem_erro_login
            expect(erro).to have_content 'Epic sadface: Sorry, this user has been locked out.'
        

        when "Epic sadface: Username is required"
            erro = @LoginPage.mensagem_erro_login
            expect(erro).to have_content 'Epic sadface: Username is required'
        

        when "Epic sadface: Password is required"
            erro = @LoginPage.mensagem_erro_login
            expect(erro).to have_content 'Epic sadface: Password is required'    
    end
end
