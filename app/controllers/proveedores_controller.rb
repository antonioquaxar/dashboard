class ProveedoresController < ApplicationController

  before_action :authenticate_user!

  before_action :set_proveedore, only: %i[ show edit update destroy ]

  # GET /proveedores or /proveedores.json
  def index
    @proveedores = Proveedore.all
  end

  # GET /proveedores/1 or /proveedores/1.json
  def show
  end

  # GET /proveedores/new
  def new
    @proveedore = Proveedore.new
  end

  # GET /proveedores/1/edit
  def edit
  end

  # POST /proveedores or /proveedores.json
  def create
    @proveedore = Proveedore.new(proveedore_params)

    respond_to do |format|
      if @proveedore.save
        format.html { redirect_to @proveedore, notice: "El proveedor ha sido creado con exito." }
        format.json { render :show, status: :created, location: @proveedore }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proveedore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proveedores/1 or /proveedores/1.json
  def update
    respond_to do |format|
      if @proveedore.update(proveedore_params)
        format.html { redirect_to @proveedore, notice: "El proveedor ha sido actualizado con exito." }
        format.json { render :show, status: :ok, location: @proveedore }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proveedore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proveedores/1 or /proveedores/1.json
  def destroy
    @proveedore.destroy
    respond_to do |format|
      format.html { redirect_to proveedores_url, notice: "El proveedor ha sido eliminado con exito." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proveedore
      @proveedore = Proveedore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proveedore_params
      params.require(:proveedore).permit(:compañia, :telefono, :nombreContacto, :tipoProveedor, :fechaCreacion, :fechaActualizacion)
    end
end
