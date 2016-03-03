class Proyecto < ActiveRecord::Base
	include Permalynkable
	extend Permalynkable::ClassMethods
	
	attr_accessible :delete_charter_doc, :delete_pert_file

	has_one :charter, :dependent => :destroy
	accepts_nested_attributes_for :charter
	
	has_attached_file :charter_doc
	has_attached_file :pert_file
	
	before_save :destroy_files?

	def delete_charter_doc
    	@image_delete ||= "0"
	end

	def delete_charter_doc=(value)
		@image_delete = value
	end
	
	def delete_pert_file
    	@image_delete ||= "0"
	end

	def delete_pert_file=(value)
		@image_delete = value
	end

	private
		def destroy_files?
			self.charter_doc.clear if @delete_charter_doc == "1"
			self.pert_file.clear if @delete_pert_file == "1"
		end
	
end
