class ObjetivoNegociosController < ApplicationController
  before_filter :find_proyecto

  # GET /objetivo_negocios
  # GET /objetivo_negocios.xml
  def index
    @objetivo_negocios = ObjetivoNegocio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @objetivo_negocios }
    end
  end

  # GET /objetivo_negocios/1
  # GET /objetivo_negocios/1.xml
  def show
    @objetivo_negocio = ObjetivoNegocio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @objetivo_negocio }
    end
  end

  # GET /objetivo_negocios/new
  # GET /objetivo_negocios/new.xml
  def new
    @objetivo_negocio = ObjetivoNegocio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @objetivo_negocio }
    end
  end

  # GET /objetivo_negocios/1/edit
  def edit
    @objetivo_negocio = ObjetivoNegocio.find(params[:id])
  end

  # POST /objetivo_negocios
  # POST /objetivo_negocios.xml
  def create
    @objetivo_negocio = ObjetivoNegocio.new(params[:objetivo_negocio])
    @objetivo_negocio.charter_id = @proyecto.charter.id
    respond_to do |format|
      if @objetivo_negocio.save
        format.html { redirect_to(proyecto_objetivo_negocio_path(@proyecto, @objetivo_negocio), :notice => 'Objetivo negocio was successfully created.') }
        format.xml  { render :xml => @objetivo_negocio, :status => :created, :location => @objetivo_negocio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @objetivo_negocio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /objetivo_negocios/1
  # PUT /objetivo_negocios/1.xml
  def update
    @objetivo_negocio = ObjetivoNegocio.find(params[:id])

    respond_to do |format|
      if @objetivo_negocio.update_attributes(params[:objetivo_negocio])
        format.html { redirect_to([@proyecto, @objetivo_negocio], :notice => 'Objetivo negocio was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @objetivo_negocio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /objetivo_negocios/1
  # DELETE /objetivo_negocios/1.xml
  def destroy
    @objetivo_negocio = ObjetivoNegocio.find(params[:id])
    @objetivo_negocio.destroy

    respond_to do |format|
      format.html { redirect_to(proyecto_objetivo_negocios_url([@proyecto])) }
      format.xml  { head :ok }
    end
  end
  
  protected
  
  def find_proyecto
  	@proyecto = Proyecto.includes(:charter).exfind(params[:proyecto_id])
  end
end
