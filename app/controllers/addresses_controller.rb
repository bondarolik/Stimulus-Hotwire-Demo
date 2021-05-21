class AddressesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  def index
    @addresses = Address.all
  end

  def show; end

  def new
    @address = Address.new
  end

  def edit; end

  def create
    @address = Address.new(resource_params)
    if @address.save
      flash[:notice] = "Dirección agregada correctamente"
      redirect_to addresses_path
    else
      flash[:alert] = "Ocurrió un error al agregar la dirección"
      render :new
    end
  end

  def update
    if @address.update(resource_params)
      flash[:notice] = "Dirección actualizada correctamente"
      redirect_to addresses_path
    else
      flash[:alert] = "Ocurrió un error al modificar los datos de la dirección"
      render :edit
    end

  end

  def destroy
    if @address.destroy
      flash[:notice] = "Dirección eliminada!"
      redirect_to addresses_path
    else
      flash[:error] =  "No se puede eliminar la dirreción"
      redirect_to addresses_path
    end
  end

  private
    def set_resource
      @address = Address.find(params[:id])
    end

    def resource_params
      accessible = []
      accessible << %i[title street street_number zipcode appt_floor appt_number]
      accessible << %i[state country state_id country_id]
      params.require(:address).permit(accessible)
    end
end
