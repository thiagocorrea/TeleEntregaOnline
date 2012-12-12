class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.integer :id_pais
      t.text :descricao

      t.timestamps
    end
  end
end
