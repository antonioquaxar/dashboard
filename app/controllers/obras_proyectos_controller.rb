class ObrasProyectosController < ApplicationController

  before_action :authenticate_user!

  before_action :set_obras_proyecto, only: %i[ show edit update destroy ]

  # GET /obras_proyectos or /obras_proyectos.json
  def index
    @obras_proyectos = ObrasProyecto.all
  end

  # GET /obras_proyectos/1 or /obras_proyectos/1.json
  def show
  end

  # GET /obras_proyectos/new
  def new
    @obras_proyecto = ObrasProyecto.new
  end

  # GET /obras_proyectos/1/edit
  def edit
  end

  # POST /obras_proyectos or /obras_proyectos.json
  def create
    @obras_proyecto = ObrasProyecto.new(obras_proyecto_params)

    respond_to do |format|
      if @obras_proyecto.save
        format.html { redirect_to @obras_proyecto, notice: "La obra o proyecto ha sido creado con exito." }
        format.json { render :show, status: :created, location: @obras_proyecto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @obras_proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obras_proyectos/1 or /obras_proyectos/1.json
  def update
    respond_to do |format|
      if @obras_proyecto.update(obras_proyecto_params)
        format.html { redirect_to @obras_proyecto, notice: "La obra o proyecto ha sido actualizado con exito." }
        format.json { render :show, status: :ok, location: @obras_proyecto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @obras_proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obras_proyectos/1 or /obras_proyectos/1.json
  def destroy
    @obras_proyecto.destroy
    respond_to do |format|
      format.html { redirect_to obras_proyectos_url, notice: "La obra o proyecto ha sido eliminado con exito." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obras_proyecto
      @obras_proyecto = ObrasProyecto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def obras_proyecto_params
      params.require(:obras_proyecto).permit(:nombre, :descripcion, :ubicacion, :TipoObra, :MontoObra, :fechaInicio, :fechaFin, :responsable, :fechaCreacion, :fechaActualizacion)
    end
end
