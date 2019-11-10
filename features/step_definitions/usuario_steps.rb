Given("Eu estou na pagina de usuarios") do
  visit '/usuarios'
  expect(page).to have_content('Usuarios')
end

When("Eu clico em novo usuario") do
  click_link 'Novo Usuario'
end

And("Eu crio um usuario com nome {string}, cpf {string}, login {string}, senha {string} e cargo {string}") do |nome, cpf, login, senha, cargo|
  fill_in 'usuario[nome]', :with => nome
  fill_in 'usuario[cpf]', :with => cpf
  fill_in 'usuario[login]', :with => login
  fill_in 'usuario[senha]', :with => senha
  fill_in 'usuario[cargo]', :with => cargo
end

And("Eu clico em criar usuario") do
  click_button 'Criar Usuario'
end

Then("Eu vejo que o usuario foi cadastrado corretamente") do
end

Then("Eu visualizo que o campo cpf esta invalido") do
end

Then("Eu visualizo que o campo nome esta invalido") do
end

Then("Eu visualizo que o campo login esta invalido") do
end

Then("Eu visualizo que o campo senha esta invalido") do
end

Then("Eu visualizo que o campo cargo esta invalido") do
end

And ("O usuario de nome {string}, cpf {string}, login {string}, senha {string} e cargo {string} existe") do |nome, cpf, login, senha, cargo|
  click_link 'Novo Usuario'
  fill_in 'usuario[nome]', :with => nome
  fill_in 'usuario[cpf]', :with => cpf
  fill_in 'usuario[login]', :with => login
  fill_in 'usuario[senha]', :with => senha
  fill_in 'usuario[cargo]', :with => cargo
  click_button 'Criar Usuario'
  visit '/usuarios'
  expect(page).to have_content(cpf)
end

When ("Eu clico em visualizar o usuario de cpf {string}") do |cpf|
  click_link "v-#{cpf}"
end
Then ("Eu vejo todas as informações do usuario de cpf {string}") do |cpf|
  expect(page).to have_content(cpf)
end

When("Eu clico em remover o usuario com cpf {string}") do |cpf|
  click_link "r-#{cpf}"
end

Then("Eu vejo uma mensagem que o usuario foi removido com sucesso") do
end
