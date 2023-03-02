class EquipmentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :update, :destroy]
  def index
    if params[:query].present?
      @equipments = Equipment.search_equipment(params[:query])
    else
      @equipments = Equipment.all
    end

    @markers = @equipments.geocoded.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { equipment: equipment })
      }
    end
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.user = current_user

    if @equipment.save
      redirect_to equipment_path(@equipment)
    else
      render 'new', status: :unprocessable_entity
    end
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
    @equipment = Equipment.find(params[:id])
    @equipment.destroy

    redirect_to equipments_path, status: :see_other
  end

  private

  def equipment_params
    params.require(:equipment).permit(:name, :description, :address, :price, :category, photos: [])
  end
end
