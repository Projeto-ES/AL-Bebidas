json.extract! pedido, :id, :usuario_id, :produto_id, :quantidade, :valorTotal, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
