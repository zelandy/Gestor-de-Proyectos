class CreateContactos < ActiveRecord::Migration
  def self.up
    create_table :contactos do |t|
      t.references :contactable, :polymorphic => true
      t.references :identificable, :polymorphic => true
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :contactos
  end
end
