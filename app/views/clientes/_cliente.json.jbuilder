json.extract! cliente, :id, :cpf, :nome, :telefone, :rua, :numero, :bairro, :cidade, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
