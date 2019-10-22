class Usuario < ApplicationRecord
  validates :cpf, presence: true,
            length: { minimum:11, maximum:11 }
end
