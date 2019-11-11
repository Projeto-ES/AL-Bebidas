class Cliente < ApplicationRecord
  has_many(:pedidos)
  validates :cpf, presence: { message: "nao deve ser em branco"},
              length: { is:11, message:"deve ter 11 digitos"},
              numericality: { only_integer:true,message:"deve conter apenas números" }
  validates :nome, presence: {message: " nao deve ser em branco" },
              length: {minimum: 5,too_short: "deve ter pelo menos 5 caracteres" }
  validates :telefone, presence: {message: " nao deve ser em branco" },
              length: {minimum: 8,too_short: "deve ter pelo menos 8 caracteres" },
              numericality: {only_integer:true,message:"deve conter apenas números"}
  validates :rua, presence: {message: " nao deve ser em branco" },
              length: {minimum: 8,too_short: "deve ter pelo menos 8 caracteres" }
  validates :numero, presence: {message: " nao deve ser em branco" },
              numericality: {only_integer:true,message:"deve conter apenas números"}
  validates :bairro, presence: {message: " nao deve ser em branco" },
              length: {minimum: 4,too_short: "deve ter pelo menos 4 caracteres" }
  validates :cidade, presence: {message: " nao deve ser em branco" },
              length: {minimum: 3,too_short: "deve ter pelo menos 3 caracteres" }
end
