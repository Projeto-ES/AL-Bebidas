Feature: Produto
    As an administrador do Sistema AL Bebidas
    I want to cadastrar, alterar e remover um produto
    So that eu não precise fazer isso manualmente

  Scenario: visualizar produto
    Given Eu estou na pagina de produtos
    And O produto de codigo "1", nome "coca-cola" e valor "5.0" existe
    When Eu clico em visualizar o produto de nome "coca-cola"
    Then Eu vejo todas as informações do produto de nome "coca-cola"
