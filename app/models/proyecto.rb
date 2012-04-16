class Proyecto < ActiveRecord::Base
	include Permalynkable
	extend Permalynkable::ClassMethods

	has_one :charter, :dependent => :destroy
	accepts_nested_attributes_for :charter
	
	has_attached_file :charter_doc
	
end
