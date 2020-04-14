class HomesController < ActionController::Base
  def index
    @homes = Home.all
    @users = User.all
  end

  def new
    @home = Home.new
  end

  def create
      @home = Home.new(home_params)

      if @home.save
        redirect_to homes_path
      else
        render :new
      end
  end

  def show
    @home = Home.find(params[:id])
    @booking = Booking.new
  end

  def update
    @home = Home.find(params[:id])
    @home.update(home_params)

    render :show
  end

  private
    def home_params
      params.require(:home).permit(:name, :rent_daily, :user_id, :days)
    end
end
