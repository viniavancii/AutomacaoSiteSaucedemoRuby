# frozen_string_literal: true

# Classe que trata as acoes basicas do portal
class LoginPage
    include Capybara::DSL

    def visitar_portal
        sleep 1
        visit 'https://www.saucedemo.com/'
        sleep 1
    end

    def inserir_dados_login(user, senha)
        sleep 1
        find('#user-name').set user
        sleep 1
        find('#password').set senha
        sleep 1
    end

    def clicar_login
        sleep 1
        find('#login-button').click
        sleep 1
    end

    def validar_pagina_inicial 
        titulo = find('#header_container > div.header_secondary_container > span').text
        return titulo #retorna o texto encontado no seletor
    end

    def sair_portal 
        sleep 3
        find('#react-burger-menu-btn').click
        sleep 1
        find('#logout_sidebar_link').click
    end

    def mensagem_erro_login
        sleep 1
        erro = find('#login_button_container > div > form > div.error-message-container.error > h3').text
        return erro
        sleep 1
    end
end
