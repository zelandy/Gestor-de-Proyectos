class SphinxController < ApplicationController
  respond_to :json

  def contacto
  	respond_with @personas = Persona.all, :include => :contacto
  end

end
