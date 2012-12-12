class Uf < ActiveRecord::Base
  attr_accessible :descricao, :id_estado, :id_pais
  belongs_to :country
  has_many :cities
end
