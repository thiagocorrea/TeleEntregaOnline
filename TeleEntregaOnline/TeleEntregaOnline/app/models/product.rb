class Product < ActiveRecord::Base
  attr_accessible :descricao, :id_produto, :observacao, :preco, :tipo_produto
has_and_belongs_to_many :purchases
end
