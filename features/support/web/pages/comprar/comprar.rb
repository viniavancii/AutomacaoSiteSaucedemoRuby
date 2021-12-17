# frozen_string_literal: true

# Classe que trata as acoes basicas do portal
class Comprar
    include Capybara::DSL

    def adicionar_produtos_carrinho 
        sleep 1
        find('#add-to-cart-sauce-labs-backpack').click
        find('#add-to-cart-sauce-labs-bike-light').click
        find('#add-to-cart-sauce-labs-bolt-t-shirt').click
        find('#add-to-cart-sauce-labs-fleece-jacket').click
        find('#add-to-cart-sauce-labs-onesie').click
        find('#add-to-cart-test\.allthethings\(\)-t-shirt-\(red\)').click
        sleep 1
    end

    def clicar_carrinho
        sleep 1
        find('#shopping_cart_container > a').click
        sleep 1
    end

    def clicar_btn_checkout
        sleep 1
        find('#checkout').click
        sleep 1
    end

    def preencher_dados_user(nome, sobrenome, zip)
        sleep 1
        find('#first-name').set nome
        find('#last-name').set sobrenome
        find('#postal-code').set zip
        sleep 1
    end

    def clicar_btn_continue
        sleep 1
        find('#continue').click
        sleep 1
    end

    def clicar_btn_finish
        sleep 1
        find('#finish').click
        sleep 1
    end

    def verificar_mensagem_compra
        sleep 1
        mensagem = find('#header_container > div.header_secondary_container > span').text
        return mensagem
        sleep 1
    end

    def mensagem_erro_compra
        sleep 1
        erro2 = find('#checkout_info_container > div > form > div.checkout_info > div.error-message-container.error > h3').text
        return erro2
        sleep 1
    end
end