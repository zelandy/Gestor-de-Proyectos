class CreateElementoEstrategicos < ActiveRecord::Migration
  def self.up
    create_table :elemento_estrategicos do |t|
      t.string :texto
      t.references :objetivo_negocio

      t.timestamps
    end
  end

  def self.down
    drop_table :elemento_estrategicos
  end
end
