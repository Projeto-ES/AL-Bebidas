Given("Eu estou na pagina de produtos")do
  visit '/produtos'
  expect(page).to have_content('Produtos')
end
And ("O produto de codigo {string}, nome {string} e valor {string} existe") do |codigo, nome, valor|
  click_link 'Novo Produto'
  fill_in 'produto[codigo]', :with => codigo
  fill_in 'produto[nome]', :with => nome
  fill_in 'produto[valor]', :with => valor
  click_button 'Create Produto'
  visit '/produtos'
  expect(page).to have_content(nome)
end

When ("Eu clico em visualizar o produto de nome {string}") do |nome|
  click_link "v-#{nome}"
end
Then ("Eu vejo todas as informacoes do produto de nome {string}") do |nome|
  expect(page).to have_content(nome)
end

Then("Eu clico em remover o produto de nome {string}")do |nome|
  click_link "r-#{nome}"
end

Then("Eu vejo uma mensagem que o produto foi removido com sucesso")do
end

When("Eu clico em alterar o produto de nome {string}") do |nome|
  click_link "e-#{nome}"
end

And("Eu altero o nome para {string}") do |nome|
  fill_in 'produto[nome]', :with => nome
end

And("Eu clico em alterar produto")do
  click_button 'Update Produto'
end

Then("Eu vejo que o produto foi alterado com sucesso") do
end

When("Eu clico em novo produto")do
  click_link 'Novo Produto'
end

And("Eu crio um produto de codigo {string}, nome {string} e valor {string}") do |codigo, nome, valor|
  fill_in 'produto[codigo]', :with => codigo
  fill_in 'produto[nome]', :with => nome
  fill_in 'produto[valor]', :with => valor
end

And("Eu clico em criar produto")do
  click_button 'Create Produto'
end

Then("Eu vejo que o produto foi cadastrado com sucesso")do
end

Then("Eu visualizo que o campo codigo esta invalido") do
end

Then("Eu visualizo que o nome esta invalido") do
end

Then("Eu visualizo que o campo valor esta invalido") do
end

