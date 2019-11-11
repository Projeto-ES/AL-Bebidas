Given("Eu estou na pagina de clientes") do
  visit '/clientes'
  expect(page).to have_content('Clientes')
end

When("Eu clico em novo cliente") do
  click_link 'Novo Cliente'
end

And("Eu crio um cliente com cpf {string}, nome {string}, telefone {string}, rua {string}, numero {string}, bairro {string}, cidade {string}") do |cpf, nome, telefone, rua, numero, bairro, cidade|
  fill_in 'cliente[cpf]', :with => cpf
  fill_in 'cliente[nome]', :with => nome
  fill_in 'cliente[telefone]', :with => telefone
  fill_in 'cliente[rua]', :with => rua
  fill_in 'cliente[numero]', :with => numero
  fill_in 'cliente[bairro]', :with => bairro
  fill_in 'cliente[cidade]', :with => cidade
end

And("Eu clico em criar cliente") do
  click_button 'Create Cliente'
end

Then("Eu vejo que o cliente foi cadastrado corretamente") do
end

Then("Eu vejo a mensagem informando que o campo cpf esta invalido") do
end

Then("Eu vejo a mensagem informando que o campo nome esta invalido") do
end

And ("O cliente de cpf {string}, nome {string}, telefone {string}, rua {string}, numero {string}, bairro {string} e cidade {string} existe") do |cpf, nome, telefone, rua, numero, bairro, cidade|
  click_link 'Novo Cliente'
  fill_in 'cliente[cpf]', :with => cpf
  fill_in 'cliente[nome]', :with => nome
  fill_in 'cliente[telefone]', :with => telefone
  fill_in 'cliente[rua]', :with => rua
  fill_in 'cliente[numero]', :with => numero
  fill_in 'cliente[bairro]', :with => bairro
  fill_in 'cliente[cidade]', :with => cidade
  click_button 'Create Cliente'
  visit '/clientes'
  expect(page).to have_content(cpf)
end

When ("Eu clico em visualizar o cliente de cpf {string}") do |cpf|
  click_link "v-#{cpf}"
end

Then ("Eu vejo todas as informacoes do cliente de cpf {string}") do |cpf|
  expect(page).to have_content(cpf)
end

When("Eu clico em remover o cliente de cpf {string}") do |cpf|
  click_link "d-#{cpf}"
end

Then("Eu vejo uma mensagem que o cliente foi removido com sucesso") do
end

When("Eu clico em alterar o cliente de cpf {string}") do |cpf|
  click_link "e-#{cpf}"
end

And("Eu altero o nome do cliente para {string}") do |nome|
  fill_in 'cliente[nome]', :with => nome
end

And("Eu clico em confirmar alteracao") do
  click_button "Update Cliente"
end

Then("Eu vejo que o cliente foi alterado com sucesso") do
end

