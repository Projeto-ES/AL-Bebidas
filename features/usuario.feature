Feature: Usuário
  As an Administrador do Sistema AL Bebidas
  I want to cadastrar, alterar e remover um usuário
  so that eu nao ter que fazer isso manualmente

  Scenario: cadastrar usuario
    Given Eu estou na pagina de usuarios
    When Eu clico em novo usuario
    And Eu crio um usuario com nome "Marcos", cpf "87674583732", login "marcos", senha "1234" e cargo "vendedor"
    And Eu clico em criar usuario
    Then Eu vejo que o usuario com nome "Marcos" foi cadastrado corretamente



  Scenario: cadastrar usuario com cpf invalido
    Given Eu estou na pagina de usuarios
    When Eu clico em novo usuario
    And Eu crio um usuario com nome "Felipe", cpf "9765", login "felipe", senha "12345" e cargo "vendedor"
    And Eu clico em criar usuario
    Then Eu visualizo que o campo cpf esta invalido

  Scenario: remover um usuario existente
    Given O usuário com nome "Evandro", cpf "96857463214", login "evandro", senha "01020304", cargo "Vendedor" existe
    When  Eu clico em remover o usuario com cpf '96857463214'
    Then Eu vejo uma mensagem que o usuario foi removido com sucesso




