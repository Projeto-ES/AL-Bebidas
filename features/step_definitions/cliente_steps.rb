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
  click_button 'Criar Cliente'
end

Then("Eu vejo que o cliente foi cadastrado corretamente") do
end
