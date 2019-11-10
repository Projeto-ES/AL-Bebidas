class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :cpf
      t.string :nome
      t.string :telefone
      t.string :rua
      t.string :numero
      t.string :bairro
      t.string :cidade

      t.timestamps
    end
  end
end
