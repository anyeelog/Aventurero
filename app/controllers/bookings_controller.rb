class BookingsController < ApplicationController
  before_action :authenticate_user!
 #comment
  def index
    @my_bookings = Booking.all.where(user_id: current_user.id)
    @received_bookings = current_user.received_bookings
    @pending_bookings = current_user.received_bookings.where(status: "pending")
  end

  def new
    @equipment = Equipment.find(params[:equipment_id])
    @booking = Booking.new
  end

  def create
    @equipment = Equipment.find(params[:equipment_id])
    @booking = Booking.new(booking_params)
    @booking.equipment = @equipment
    @booking.user = current_user
    @booking.total_price = ((@booking.end_date - @booking.start_date) * @equipment.price)
    @booking.save

    redirect_to bookings_path
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(status: params[:status])
    redirect_to user_path(current_user)
    #get params sent by booking index and update status of booking accordingly
  end

  def destroy
    @booking.destroy
    redirect_to equipments_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:equipment_id, :user_id, :status, :start_date, :end_date, :total_price)
  end

end
