class Contacto < ActiveRecord::Base
  belongs_to :contactable, :polymorphic => true
  belongs_to :identificable, :polymorphic => true
end
