class Charter < ActiveRecord::Base
	has_many :objetivo_negocios, :dependent => :destroy
	has_many :stakeholders, :dependent => :destroy
	belongs_to :proyecto
	
	accepts_nested_attributes_for :stakeholders, :allow_destroy => true
end
