class CreateStakeholders < ActiveRecord::Migration
  def self.up
    create_table :stakeholders do |t|
      t.references :user
      t.references :charter
      t.string :role
      t.string :permalynk
      
      t.timestamps
    end
  end

  def self.down
    drop_table :stakeholders
  end
end
