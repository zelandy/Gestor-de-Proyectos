class SphinxController < ApplicationController

  def contacto
  	if params[:q]
	  	_personas = Persona.includes(:contacto).where(['nombre LIKE :q OR ap_paterno LIKE :q OR ap_materno LIKE :q', {:q => "%#{params[:q]}%"}]).order('nombre').all
	  	@data = _personas.map{|x| x.attributes.merge({:contacto=>x.contacto.attributes}) }
	end
	
	respond_to do |format|
		format.json{ render :json=>@data.as_json }
	end
	
  end

end
