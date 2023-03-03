class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @my_bookings = Booking.all.where(user_id: current_user.id)
    @received_bookings = current_user.received_bookings
    @pending_bookings = current_user.received_bookings.where(status: "pending")
    @confirmed_bookings = current_user.received_bookings.where(status: "confirmed")
  end

end
