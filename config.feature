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

            Cenário: Preencha Campo Tamanho
            Quando definir a Cor e Quantidade
            Então deve exibir a mensagem "Informe o Tamanho"

            Cenário: Preencha Campo Cor
            Quando definir a Tamanho e Quantidade
            Então deve exibir a mensagem "Informe a Cor"

            Cenário: Preencha Campo Quantidade
            Quando definir a Cor e Tamanho
            Então deve exibir a mensagem "Informe a Quantidade"

            Cenário: Limpar últimas definições
            Quando clicar em Limpar
            Então todas minhas escolhas anteriores serão desfeitas.

            Cenário: Quantidade Máxima
            Quando preencher 10 <produto>
            E <cor>, <quantidade> e <tamanho> estiver preenchido
            Então sistema deve permitir até 10 <produto>

            Esquema do Cenário: Quantidade Acima do Permitido
            Quando preencher 11 <produto>
            E <cor>, <quantidade> e <tamanho> estiver preenchido
            Então deve exibir a mensagem "Só é permitido a compra de 10 produtos por venda"

            Exemplos:
            | Produto  | Cor      | Quantidade | Tamanho |
            | Camisa   | Preto    | 1          | P       |
            | Camiseta | Branco   | 2          | M       |
            | Blusa    | Azul     | 4          | G       |
            | Shorts   | Vermelho | 8          | XS      |
            | Bermuda  | Amarelo  | 3          | S       |
            | Agasalho | Verde    | 5          | XL      |
            | Regata   | Roxo     | 7          | GG      |
            | Cueca    | Lilás    | 9          | GGG     |
            | Calcinha | Bege     | 6          | XGG     |
            | Sutiã    | Marrom   | 10         | PP      |