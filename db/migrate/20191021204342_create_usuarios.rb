class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :cpf
      t.string :login
      t.string :senha
      t.string :cargo

      t.timestamps
    end
  end
end
