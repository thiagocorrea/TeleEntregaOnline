class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :id_endereco
      t.text :rua
      t.integer :cep
      t.text :bairro
      t.integer :id_cidade

      t.timestamps
    end
  end
end
