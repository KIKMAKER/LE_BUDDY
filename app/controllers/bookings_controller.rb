class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
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
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
