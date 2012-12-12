class CreateUfs < ActiveRecord::Migration
  def change
    create_table :ufs do |t|
      t.integer :id_estado
      t.text :descricao
      t.integer :id_pais

      t.timestamps
    end
  end
end
