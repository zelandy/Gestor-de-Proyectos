class Charter < ActiveRecord::Base
	has_many :objetivo_negocios, :dependent => :destroy
	has_many :charter_contactos
	has_many :contactos, :through => :charter_contactos	
	belongs_to :proyecto
	
	accepts_nested_attributes_for :charter_contactos, :allow_destroy => true
end
