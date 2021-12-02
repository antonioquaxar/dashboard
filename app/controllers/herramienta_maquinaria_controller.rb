class HerramientaMaquinariaController < ApplicationController

  before_action :authenticate_user!

  before_action :set_herramienta_maquinarium, only: %i[ show edit update destroy ]

  # GET /herramienta_maquinaria or /herramienta_maquinaria.json
  def index
    @herramienta_maquinaria = HerramientaMaquinarium.all
  end

  # GET /herramienta_maquinaria/1 or /herramienta_maquinaria/1.json
  def show
  end

  # GET /herramienta_maquinaria/new
  def new
    @herramienta_maquinarium = HerramientaMaquinarium.new
  end

  # GET /herramienta_maquinaria/1/edit
  def edit
  end

  # POST /herramienta_maquinaria or /herramienta_maquinaria.json
  def create
    @herramienta_maquinarium = HerramientaMaquinarium.new(herramienta_maquinarium_params)

    respond_to do |format|
      if @herramienta_maquinarium.save
        format.html { redirect_to @herramienta_maquinarium, notice: "La herramienta o maquinaria ha sido creado con exito." }
        format.json { render :show, status: :created, location: @herramienta_maquinarium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @herramienta_maquinarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /herramienta_maquinaria/1 or /herramienta_maquinaria/1.json
  def update
    respond_to do |format|
      if @herramienta_maquinarium.update(herramienta_maquinarium_params)
        format.html { redirect_to @herramienta_maquinarium, notice: "La herramienta o maquinaria ha sido actualizado con exito." }
        format.json { render :show, status: :ok, location: @herramienta_maquinarium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @herramienta_maquinarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /herramienta_maquinaria/1 or /herramienta_maquinaria/1.json
  def destroy
    @herramienta_maquinarium.destroy
    respond_to do |format|
      format.html { redirect_to herramienta_maquinaria_url, notice: "La herramienta o maquinaria ha sido eliminado con exito." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herramienta_maquinarium
      @herramienta_maquinarium = HerramientaMaquinarium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herramienta_maquinarium_params
      params.require(:herramienta_maquinarium).permit(:nombre, :modelo, :marca, :fechaAdquisicion, :cantidadAlmacen, :fechaCreacion, :fechaActualizacion)
    end
end
