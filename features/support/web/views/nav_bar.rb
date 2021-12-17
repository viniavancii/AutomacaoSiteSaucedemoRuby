frozen_string_literal: true

# Classe que trata a barra de navegacao
class NavBar
    include Capybara::DSL

    def clicar_carrinho
        find('#shopping_cart_container > a').click
    end

    def clicar_menu
        find('#react-burger-menu-btn').click
    end

    def clicar_twitter
        find('#page_wrapper > footer > ul > li.social_twitter > a').click
    end

    def clicar_face
        find('#page_wrapper > footer > ul > li.social_facebook > a').click
    end

    def clicar_linkedin
        find('#page_wrapper > footer > ul > li.social_linkedin > a').click
    end

    def clicar_all_items 
        find('#inventory_sidebar_link').click
    end

    def clicar_about
        find('#about_sidebar_link').click
    end

    def clicar_logout
        find('#logout_sidebar_link').click
    end

    def clicar_logout
        find('#reset_sidebar_link').click
    end
end