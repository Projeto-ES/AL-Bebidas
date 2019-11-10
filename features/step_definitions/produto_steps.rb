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
Then ("Eu vejo todas as informações do produto de nome {string}") do |nome|
  expect(page).to have_content(nome)
end