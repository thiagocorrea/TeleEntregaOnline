class City < ActiveRecord::Base
  attr_accessible :descricao, :id_cidade, :id_estado
  belongs_to :uf
  has_many :addresses  
end
