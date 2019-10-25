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

Then("Eu vejo que o usuario com nome {string} foi cadastrado corretamente") do |nome|
  expect(page).to have_content(nome)
end

And("Eu visualizo o usuario com nome {string} e cpf {string}") do |nome,cpf|
  expect(page).to have_content(nome)
  expect(page).to have_content(cpf)
end

When("eu clico em alterar") do
  click_link 'Alterar'
end

And("eu altero o campo senha para {string}") do |senha|
  fill_in 'usuario[senha]', :with => senha
end

And("Eu clico em alterar usuario") do
  click_button 'Alterar Usuario'
end

Then("Eu vejo que o usuario com nome {string} foi alterado com sucesso") do |nome|
  expect(page).to have_content(nome)
end