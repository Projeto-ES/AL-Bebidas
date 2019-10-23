class Produto < ApplicationRecord
  attr_accessor :codigo, :nome, :valor

  def initialize(codigo, nome, valor)
    @codigo = codigo
    @nome = nome
    @valor = valor
  end

  belongs_to(:pedido)
  validates :codigo, presence: true
  validates :nome, presence: true
  validates :valor, presence: true

end
