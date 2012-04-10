class CreateCharters < ActiveRecord::Migration
  def self.up
    create_table :charters do |t|
      t.string :proyecto_titulo
      t.string :proyecto_version
      t.references :proyecto
      t.text :resumen
      t.string :permalynk

      t.timestamps
    end
  end

  def self.down
    drop_table :charters
  end
end
