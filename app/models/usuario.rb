class Usuario < ApplicationRecord
  has_many(:pedidos)
  validates :cpf, presence: true,
            length: { minimum:11, maximum:11 }
  validates :nome, presence: true
  validates :login, presence: true
  validates :senha, presence: true
  validates :cargo, presence: true
end
