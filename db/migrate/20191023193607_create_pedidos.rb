class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos, force: :cascade do |t|
      t.references :usuario, foreign_key: true
      t.references :produtos, foreign_key: true
      t.integer :quantidade
      t.float :valorTotal

      t.timestamps
    end
  end
end
