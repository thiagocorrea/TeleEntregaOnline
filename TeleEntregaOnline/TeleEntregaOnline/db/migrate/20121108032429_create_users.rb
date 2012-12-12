class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id_usuario
      t.text :username
      t.text :password

      t.timestamps
    end
  end
end
