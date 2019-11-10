class Produto < ApplicationRecord

  validates :codigo, presence: { message: "deve ser preenchido"}
  validates :nome, presence: { message: "deve ser preenchido"}
  validates :valor, presence: { message: "deve ser preenchido"}

end
