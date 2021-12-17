# frozen_string_literal: true

# Classe que trata as acoes basicas do portal
class Carrinho
    include Capybara::DSL

    def adicionar_carrinho
        sleep 3
        find('#add-to-cart-sauce-labs-backpack').click
        sleep 3
    end

    def verificar_carrinho
        sleep 3
        verificar_item = find('#item_4_title_link > div').text
        return verificar_item
        sleep 3
    end

    def remover_carrinho
        sleep 3
        find('#remove-sauce-labs-backpack').click
        sleep 3
    end

    def verificar_vazio
        sleep 3
        vazio = find('#shopping_cart_container > a').text
        return vazio
        sleep 3
    end
end