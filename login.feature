            #language: pt

            Funcionalidade: Tela de Login
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesso a pagina de Autenticação do portal EBAC-SHOP

            Cenário: Autenticação Válida
            Quando eu digitar o usuário "lucas@ebac.com.br"
            E a senha "senha@123321!"
            Então devo ser redirecionado para o portal de Checkout dos meus pedidos

            Cenário: Autenticação Inválida
            Quando eu digitar o usuário "luscas@ebac.com.br"
            E a senha "!123321@ahnes"
            Então deve exibir a mensagem "Usuário ou Senha inválidos"

            Esquema do Cenário: Autenticação sucessidade
            Quando eu digitar o <usuario>
            e a <senha>
            Então deve exibir <mensagem>

            Exemplos:
            | usuario           | senha         | mensagem                                  |
            | lucas@ebac.com.br | senha@123321! | "Você será redirecionado ao seu carrinho" |
            | luscas            | !123321@ahnes | "Usuário ou Senha Inválidos"              |