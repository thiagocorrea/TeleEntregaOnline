class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.integer :id_status
      t.text :descricao

      t.timestamps
    end
  end
end
