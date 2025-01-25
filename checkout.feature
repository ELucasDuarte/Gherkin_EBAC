            #language: pt

            Funcionalidade: Concluir Compra
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu vá concluir minha compra

            Cenário: Finalizada com Sucesso.
            Quando eu preencher todos os campos obrigatórios
            E preencher meu e-mail em formato padrão corretamento
            Então poderei finalizar minha compra

            Cenário: Preencha um e-mail Válido
            Quando eu preencher todos os campos obrigatórios
            E preencher meu e-mail incorretamente.
            Então deve exibir a mensagem "Preencha com um e-mail válido"

            Cenário: Campo obrigatório em branco
            Quando eu não preencher todos os campos obrigatórios corretamente
            E preencher meu e-mail corretamente
            Então deve exibir a mensagem "Preencha todos os campos obrigatórios (*)"

            Esquema do Cenário: Preencher todos os campos corretamente.
            Quando eu preencher <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep> e <telefone>
            E <email>
            Então deve exibir a <mensagem>

            | nome      | sobrenome  | pais   | endereco    | cidade    | cep      | telefone    | email                 | mensagem                                     |
            | Adriano   | Nogueira   | Brasil | R. Eurico   | São Paulo | 00000000 | 12123456789 | adriano@ebac.com.br   | "Pode finalizar sua compra"                  |
            |           | Breno      | Brasil | R. Mauricio | Osasco    | 12345678 | 98765432178 | breno@ebac.com.br     | "Preencha o campo Nome Corretamente"         |
            | Carlos    |            | Brasil | R. André    | Jacareí   | 65498732 | 12345602587 | carlos@ebac.com.br    | "Preencha o campo Sobrenome Corretamente."   |
            | Daniel    | Heisenberg |        | R. Macaé    | São José  | 11447589 | 13963587425 | daniel@ebac.com.br    | "Preencha o campo País corretamente."        |
            | Erick     | Rodrigues  | Brasil |             | Taubaté   | 14785203 | 32659874125 | erick@ebac.com.br     | "Preencha o campo Endereço Corretamente."    |
            | Felipe    | Santos     | Brasil | R. Peruíbe  |           | 65498741 | 32147896325 | Felipe@ebac.com.br    | "Preencha campo Cidade Corretamente."        |
            | Guilherme | Mozart     | Brasil | R. Mongaguá | Santos    |          | 98741023659 | guilherme@ebac.com.br | "Preencha o campo CEP Corretamente."         |
            | Hercules  | Silva      | Brasil | R. Canindé  | Bertioga  | 12036549 |             | hercules@ebac.com.br  | "Preencha o campo Telefone Corretamente."    |
            | Iago      | Mauricio   | Brasil | R. Valéria  | Caragua   | 65498712 | 98741365209 |                       | "Preencha o campo E-mail Corretamente."      |
            | José      | Bandeira   | Brasil | R. Benedito | Paraibuna | 96547321 | 14785203698 | @joseebac.com.br      | "Preencha o campo E-mail com e-mail válido." |