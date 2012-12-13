class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :id_usuario
      t.integer :id_pedido
      t.text :produto
      t.datetime :data_pedido
      t.integer :id_status
      t.float :valor_entrega
      t.float :valor_produtos
      t.float :valor_total
      t.time :tempo_estimado

      t.timestamps
    end
  end
end
