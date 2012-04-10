class CreateMilestones < ActiveRecord::Migration
  def self.up
    create_table :milestones do |t|
      t.string :descripcion
      t.datetime :fecha_inicio
      t.string :entregable
      t.references :charter

      t.timestamps
    end
  end

  def self.down
    drop_table :milestones
  end
end
