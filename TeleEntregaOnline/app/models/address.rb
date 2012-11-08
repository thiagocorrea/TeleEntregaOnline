class Address < ActiveRecord::Base
  attr_accessible :bairro, :cep, :id_cidade, :id_endereco, :rua
  has_and_belongs_to_many :customers
  belongs_to :city
end
