class BookingsController < ActionController::Base
  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to booking_path(@booking.id)
    else
      redirect_to home_path(@booking.home_id)
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @home = Home.find_by id: "#{@booking.home_id}"
  end

  private
    def booking_params
      params.require(:booking).permit(:user_id, :home_id, :days)
    end
end
