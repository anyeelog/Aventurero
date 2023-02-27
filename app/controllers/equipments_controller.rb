class EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.all
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.save

    redirect_to new_equipment_path(@equipment)
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  def update
    @equipment = Equipment.find(params[:id])
    @equipment.update(equipment_params)
    redirect_to equipment_path(@equipment)
  end

  def destroy
    @restaurant.destroy
    redirect_to equipments_path, status: :see_other
  end

  private

  def equipment_params
    params.require(:equipment).permit(:name)
  end
end
