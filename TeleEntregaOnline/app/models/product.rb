class Product < ActiveRecord::Base
  attr_accessible :descricao, :id_produto, :observacao, :preco, :tipo_produto
  belongs_to :purchase
end
