class Country < ActiveRecord::Base
  attr_accessible :descricao, :id_pais
  has_many :ufs
end
