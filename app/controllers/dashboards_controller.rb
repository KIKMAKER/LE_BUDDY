class DashboardsController < ApplicationController

  def show
    @user = current_user
  

    # @bookings = Booking.find(params[:id])
  end
end
