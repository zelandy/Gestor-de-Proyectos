class AddAttachmentCharterDocToProyectos < ActiveRecord::Migration
  def self.up
    add_column :proyectos, :charter_doc_file_name, :string
    add_column :proyectos, :charter_doc_content_type, :string
    add_column :proyectos, :charter_doc_file_size, :integer
    add_column :proyectos, :charter_doc_updated_at, :datetime
  end

  def self.down
    remove_column :proyectos, :charter_doc_file_name
    remove_column :proyectos, :charter_doc_content_type
    remove_column :proyectos, :charter_doc_file_size
    remove_column :proyectos, :charter_doc_updated_at
  end
end
