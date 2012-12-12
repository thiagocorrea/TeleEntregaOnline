class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :id_cidade
      t.integer :id_estado
      t.text :descricao

      t.timestamps
    end
  end
end
