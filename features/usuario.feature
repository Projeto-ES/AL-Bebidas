Feature: Usuário
  As an Administrador do Sistema AL Bebidas
  I want to cadastrar, alterar e remover um usuário
  so that eu nao ter que fazer isso manualmente

  Scenario: cadastrar usuario
    Given Eu estou na pagina de usuarios
    When Eu clico em novo usuario
    And Eu crio um usuario com nome "Marcos", cpf "87674583732", login "marcos", senha "1234" e cargo "vendedor"
    And Eu clico em criar usuario
    Then Eu vejo que o usuario foi cadastrado corretamente

  Scenario: cadastrar usuario com cpf invalido
    Given Eu estou na pagina de usuarios
    When Eu clico em novo usuario
    And Eu crio um usuario com nome "Felipe", cpf "9765", login "felipe", senha "12345" e cargo "vendedor"
    And Eu clico em criar usuario
    Then Eu visualizo que o campo cpf esta invalido

  Scenario: cadastrar usuario com nome invalido
    Given Eu estou na pagina de usuarios
    When Eu clico em novo usuario
    And Eu crio um usuario com nome "Fel", cpf "97658757687", login "felipe", senha "12345" e cargo "Vendedor"
    And Eu clico em criar usuario
    Then Eu visualizo que o campo nome esta invalido

  Scenario: cadastrar usuario com login invalido
    Given Eu estou na pagina de usuarios
    When Eu clico em novo usuario
    And Eu crio um usuario com nome "Felipe", cpf "97658757687", login "fel", senha "12345" e cargo "Vendedor"
    And Eu clico em criar usuario
    Then Eu visualizo que o campo login esta invalido

  Scenario: cadastrar usuario com senha invalido
    Given Eu estou na pagina de usuarios
    When Eu clico em novo usuario
    And Eu crio um usuario com nome "Felipe", cpf "97658757687", login "felipe", senha "12" e cargo "Vendedor"
    And Eu clico em criar usuario
    Then Eu visualizo que o campo senha esta invalido

  Scenario: cadastrar usuario com cargo invalido
    Given Eu estou na pagina de usuarios
    When Eu clico em novo usuario
    And Eu crio um usuario com nome "Felipe", cpf "97658757687", login "felipe", senha "12345" e cargo "Vend"
    And Eu clico em criar usuario
    Then Eu visualizo que o campo cargo esta invalido

  Scenario: visualizar usuario
    Given Eu estou na pagina de usuarios
    And O usuario de nome "Vinicius", cpf "86757694756", login "vinicius", senha "00112233" e cargo "Vendedor" existe
    When Eu clico em visualizar o usuario de cpf "86757694756"
    Then Eu vejo todas as informacoes do usuario de cpf "86757694756"

  Scenario: remover um usuario existente
    Given Eu estou na pagina de usuarios
    And O usuario de nome "Vinicius", cpf "86757694756", login "vinicius", senha "00112233" e cargo "Vendedor" existe
    When Eu clico em remover o usuario com cpf "86757694756"
    Then Eu vejo uma mensagem que o usuario foi removido com sucesso

  Scenario: alterar usuario
    Given Eu estou na pagina de usuarios
    And O usuario de nome "Roberto", cpf "86153694756", login "roberto", senha "0039495" e cargo "Vendedor" existe
    When Eu clico em alterar o usuario de cpf "86153694756"
    And Eu altero o campo nome para "Roberto Carlos"
    And Eu clico em alterar
    Then Eu vejo que o usuario foi alterado com sucesso

  Scenario: alterar usuario com campo nome invalido
    Given Eu estou na pagina de usuarios
    And O usuario de nome "Roberto", cpf "86153694756", login "roberto", senha "0039495" e cargo "Vendedor" existe
    When Eu clico em alterar o usuario de cpf "86153694756"
    And Eu altero o campo nome para ""
    And Eu clico em alterar
    Then Eu vejo a mensagem informando que o campo nome deve ser preenchido

