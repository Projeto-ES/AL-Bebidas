Feature: Produto
    As an administrador do Sistema AL Bebidas
    I want to cadastrar, alterar e remover um produto
    So that eu não precise fazer isso manualmente

  Scenario: visualizar produto
    Given Eu estou na pagina de produtos
    And O produto de codigo "1", nome "coca-cola" e valor "5.0" existe
    When Eu clico em visualizar o produto de nome "coca-cola"
    Then Eu vejo todas as informacoes do produto de nome "coca-cola"

  Scenario: remover um produto existente
    Given Eu estou na pagina de produtos
    And O produto de codigo "3", nome "Fanta" e valor "4.0" existe
    When Eu clico em remover o produto de nome "Fanta"
    Then Eu vejo uma mensagem que o produto foi removido com sucesso

  Scenario: alterar produto
    Given Eu estou na pagina de produtos
    And O produto de codigo "10", nome "Suco" e valor "6.0" existe
    When Eu clico em alterar o produto de nome "Suco"
    And Eu altero o nome para "Sucos"
    And Eu clico em alterar produto
    Then Eu vejo que o produto foi alterado com sucesso

  Scenario: cadastrar produto
    Given Eu estou na pagina de produtos
    When Eu clico em novo produto
    And Eu crio um produto de codigo "5", nome "Cerveja" e valor "7.0"
    And Eu clico em criar produto
    Then Eu vejo que o produto foi cadastrado com sucesso

  Scenario: cadastrar produto com codigo invalido
    Given Eu estou na pagina de produtos
    When Eu clico em novo produto
    And Eu crio um produto de codigo "", nome "Agua" e valor "1.0"
    And Eu clico em criar produto
    Then Eu visualizo que o campo codigo esta invalido

  Scenario: cadastrar produto com nome invalido
    Given Eu estou na pagina de produtos
    When Eu clico em novo produto
    And Eu crio um produto de codigo "6", nome "" e valor "7.0"
    And Eu clico em criar produto
    Then Eu visualizo que o nome esta invalido

   Scenario: cadastrar produto com valor invalido
    Given Eu estou na pagina de produtos
    When Eu clico em novo produto
    And Eu crio um produto de codigo "8", nome "Agua" e valor ""
    And Eu clico em criar produto
    Then Eu visualizo que o campo valor esta invalido
