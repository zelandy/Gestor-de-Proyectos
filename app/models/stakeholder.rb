class Stakeholder < ActiveRecord::Base

  ROLES = ['Patrocinador', 'Elaborado por', 'Autorizado por','Cliente', 'Lider de Proyecto']

  belongs_to :user
  belongs_to :charter
  has_one :contacto, :as => :contactable
end