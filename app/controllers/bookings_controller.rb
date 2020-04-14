class BookingsController < ActionController::Base
  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to home_path(@booking.home_id)
    else
      render :new
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:user_id, :home_id, :days)
    end
end
