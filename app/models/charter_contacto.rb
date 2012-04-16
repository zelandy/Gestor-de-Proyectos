class CharterContacto < ActiveRecord::Base

  ROLES = ['Sponsor', 'Preparado por', 'Cliente', 'Administrador de programa', 'Lider de Proyecto'].sort!

  belongs_to :charter
  belongs_to :contacto
end
