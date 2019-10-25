class Produto < ApplicationRecord

  validates :codigo, presence: true
  validates :nome, presence: true
  validates :valor, presence: true

end
