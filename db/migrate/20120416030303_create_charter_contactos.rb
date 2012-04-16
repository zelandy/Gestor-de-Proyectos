class CreateCharterContactos < ActiveRecord::Migration
  def self.up
    create_table :charter_contactos do |t|
      t.references :charter
      t.references :contacto
      t.string :role

      t.timestamps
    end
  end

  def self.down
    drop_table :charter_contactos
  end
end
