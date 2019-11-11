Feature: Cliente
  As an Administrador do Sistema AL Bebidas
  I want to cadastrar, alterar e remover um cliente
  so that eu nao ter que fazer isso manualmente

  Scenario: cadastrar cliente
    Given Eu estou na pagina de clientes
    When Eu clico em novo cliente
    And Eu crio um cliente com cpf "09319391489" nome "Luciano", telefone"87981653242", rua "dom joaquim", numero "2", bairro "centro", cidade "Garanhuns"
    And Eu clico em criar cliente
    Then Eu vejo que o cliente foi cadastrado corretamente