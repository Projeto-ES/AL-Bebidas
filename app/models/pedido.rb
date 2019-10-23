class Pedido < ApplicationRecord
  belongs_to :usuario
  has_many(:produto)
end
