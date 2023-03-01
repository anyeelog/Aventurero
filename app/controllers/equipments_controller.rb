class EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.all
    @markers = @equipments.geocoded.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {equipment: equipment})
      }
    end
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
    @booking = Booking.new
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  def update
    @equipment = Equipment.find(params[:id])
    if @equipment.update(equipment_params)
      redirect_to equipment_path(@equipment)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @equipment.destroy
    redirect_to equipments_path, status: :see_other
  end

  private

  def equipment_params
    params.require(:equipment).permit(:name, :description, photos: [])
  end
end
