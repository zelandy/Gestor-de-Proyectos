class SphinxController < ApplicationController

  def contacto
  	if params[:q]
	  	_persona = Persona.includes(:contacto).where(['nombre LIKE :q OR ap_paterno LIKE :q OR ap_materno LIKE :q', {:q => "%#{params[:q]}%"}]).first
	  	@contacto = _persona.contacto if _persona
	end
	
	respond_to do |format|
		format.json{ render :json=> @contacto.to_json }
	end
	
  end

end
