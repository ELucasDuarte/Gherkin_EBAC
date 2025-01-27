            #language: pt

            Funcionalidade: Configurar meu Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu escolha meu produto

            Cenário: Finalizar Compra
            Quando definir a Cor, Tamanho e Quantidade
            Então o posso inserir no carrinho.

            Cenário: Preencha Campo Quantidade
            Quando definir a Cor e Tamanho
            Então deve exibir a mensagem "Informe a Quantidade"

            Cenário: Limpar últimas definições
            Quando clicar em Limpar
            Então todas minhas escolhas anteriores serão desfeitas.

            Cenário: Quantidade Máxima
            Quando preencher 10 produtos
            E estiver dentro do limite
            Então sistema deve permitir até 10 produtos

            Esquema do Cenário: Quantidade Acima do Permitido
            Quando preencher 11 produto
            E quantidade fora do valor máximo permitido
            Então deve exibir a mensagem "Só é permitido a compra de 10 produtos por venda"

            Exemplos:
            | Produto  | Quantidade | Mensagem                                                                               |
            | Camisa   | 0          | "Por favor, insira no mínimo 1 produto para continuar"                                 |
            | Camiseta | 5          | "Vamos prosseguir com o pagamento"                                                     |
            | Blusa    | 11         | "Limite máximo de produtos por vez é de 10 produtos. Por favor verifique seu carrinho" |
