class Purchase < ActiveRecord::Base
  attr_accessible :data_pedido, :id_pedido, :id_status, :id_usuario, :tempo_estimado, :valor_entrega, :valor_produtos, :valor_total
has_and_belongs_to_many :products
has_one :state
has_one :customer
end
