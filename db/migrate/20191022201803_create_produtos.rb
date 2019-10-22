class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.integer :codigo
      t.string :nome
      t.float :valor

      t.timestamps
    end
  end
end
