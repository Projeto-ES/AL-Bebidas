class Usuario < ApplicationRecord
  attr_accessor :nome, :cpf, :login, :senha, :cargo

  def initialize(nome, cpf, login, senha, cargo)
    @nome = nome
    @cpf = cpf
    @login = login
    @senha = senha
    @cargo = cargo
  end

  has_many(:pedidos)
  validates :cpf, presence: true,
            length: { minimum:11, maximum:11 }
  validates :nome, presence: true
  validates :login, presence: true
  validates :senha, presence: true
  validates :cargo, presence: true

  def nome
    :nome
  end
end
