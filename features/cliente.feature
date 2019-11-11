Feature: Cliente
  As an Administrador do Sistema AL Bebidas
  I want to cadastrar, alterar e remover um cliente
  so that eu nao ter que fazer isso manualmente

  Scenario: cadastrar cliente
    Given Eu estou na pagina de clientes
    When Eu clico em novo cliente
    And Eu crio um cliente com cpf "09319391489", nome "Luciano", telefone "87981653242", rua "dom joaquim", numero "2", bairro "centro", cidade "Garanhuns"
    And Eu clico em criar cliente
    Then Eu vejo que o cliente foi cadastrado corretamente

  Scenario: cadastrar cliente com cpf invalido
    Given Eu estou na pagina de clientes
    When Eu clico em novo cliente
    And Eu crio um cliente com cpf "", nome "Luciano", telefone "87981653242", rua "dom joaquim", numero "2", bairro "centro", cidade "Garanhuns"
    And Eu clico em criar cliente
    Then Eu vejo a mensagem informando que o campo cpf esta invalido

  Scenario: cadastrar cliente com nome invalido
    Given Eu estou na pagina de clientes
    When Eu clico em novo cliente
    And Eu crio um cliente com cpf "76582299845", nome "", telefone "87999876564", rua "Satiro Ivo", numero "466", bairro "Magano", cidade "Garanhuns"
    And Eu clico em criar cliente
    Then Eu vejo a mensagem informando que o campo nome esta invalido

  Scenario: visualizar cliente
    Given Eu estou na pagina de clientes
    And O cliente de cpf "11122287654", nome "Marcos", telefone "87999876453", rua "Duque de Caxias", numero "988", bairro "Heliopolis" e cidade "Garanhuns" existe
    When Eu clico em visualizar o cliente de cpf "11122287654"
    Then Eu vejo todas as informacoes do cliente de cpf "11122287654"


  Scenario: remover um cliente existente
    Given Eu estou na pagina de clientes
    And O cliente de cpf "11122287654", nome "Marcos", telefone "87999876453", rua "Duque de Caxias", numero "988", bairro "Heliopolis" e cidade "Garanhuns" existe
    When Eu clico em remover o cliente de cpf "11122287654"
    Then Eu vejo uma mensagem que o cliente foi removido com sucesso

  Scenario: alterar cliente
    Given Eu estou na pagina de clientes
    And O cliente de cpf "11122287654", nome "Marcos", telefone "87999876453", rua "Duque de Caxias", numero "988", bairro "Heliopolis" e cidade "Garanhuns" existe
    When Eu clico em alterar o cliente de cpf "11122287654"
    And Eu altero o nome do cliente para "Marcos Silva"
    And Eu clico em confirmar alteracao
    Then Eu vejo que o cliente foi alterado com sucesso