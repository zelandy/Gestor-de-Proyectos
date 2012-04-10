class ObjetivoNegocio < ActiveRecord::Base
  belongs_to :charter
  has_many :elemento_estrategicos, :dependent => :destroy
  
  accepts_nested_attributes_for :elemento_estrategicos, :allow_destroy => true
end
