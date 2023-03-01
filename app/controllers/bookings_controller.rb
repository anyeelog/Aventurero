class BookingsController < ApplicationController
  before_action :authenticate_user!
 #comment
  def index
    @my_bookings = Booking.all.where(user_id: current_user.id)
  end

  def new
    @equipment = Equipment.find(params[:equipment_id])
    @booking = Booking.new
  end

  def create
    @equipment = Equipment.find(params[:equipment_id])
    @booking = Booking.new(booking_params)
    @booking.equipment = @booking
    @booking.save

    redirect_to equipment_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to equipments_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:equipment_id)
  end

end
