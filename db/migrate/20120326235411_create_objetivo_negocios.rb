class CreateObjetivoNegocios < ActiveRecord::Migration
  def self.up
    create_table :objetivo_negocios do |t|
      t.string :texto
      t.references :charter

      t.timestamps
    end
  end

  def self.down
    drop_table :objetivo_negocios
  end
end
