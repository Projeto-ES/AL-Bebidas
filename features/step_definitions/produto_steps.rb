Given("Eu estou na pagina de produtos")do
  visit '/produtos'
end
And ("Eu visualizo o produto de nome coca-cola") do
  visit '/produtos'
  expect(page).to have_content('coca-cola')
end

When ("Eu clico em visualizar o produto de nome coca-cola") do
  click_link 'Visualizar'
end
Then ("Eu vejo todas as informações do produto") do
  visit 'produtos/show'
  expected(page).to have_contente('coca-cola')
end
