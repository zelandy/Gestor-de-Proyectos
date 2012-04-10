class CreateEmpresas < ActiveRecord::Migration
  def self.up
    create_table :empresas do |t|
      t.string :razon
      t.string :rfc
      t.string :sitioweb
      t.string :permalynk

      t.timestamps
    end
  end

  def self.down
    drop_table :empresas
  end
end
