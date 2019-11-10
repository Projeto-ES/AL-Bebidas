class Usuario < ApplicationRecord

  has_many(:pedidos)
  validates :cpf, presence: { message: "nao deve ser em branco"},
            length: { is:11, message:"deve ter 11 digitos"},
            numericality: { only_integer:true,message:"deve conter apenas numeros" }
  validates :nome, presence: {message: " nao deve ser em branco" },
            length: {minimum: 5,too_short: "deve ter pelo menos 5 caracteres" }
  validates :login, presence: {message: " nao deve ser em branco" },
            length: {minimum: 5,too_short: "deve ter pelo menos 5 caracteres" }
  validates :senha, presence: {message: " nao deve ser em branco" },
            length: {minimum: 5,too_short: "deve ter pelo menos 5 caracteres" }
  validates :cargo, presence: {message: " nao deve ser em branco" },
            length: {minimum: 5,too_short: "deve ter pelo menos 5 caracteres" }

end