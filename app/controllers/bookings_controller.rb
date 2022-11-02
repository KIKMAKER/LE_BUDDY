class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @challenge = Challenge.find(params[:challenge_id])
    @booking = Booking.new
  end

  def create
    @challenge = Challenge.find(params[:challenge_id])
    @booking = Booking.new(bookings_params)
    @booking.challenge = @challenge
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:user_id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(bookings_params)
    redirect_to booking_path, status: :see_other
  end


  def destroy
    @booking = Booking.find(bookings_params)
    @booking.destroy
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :status, :user_id, :challenge_id)
  end
end
