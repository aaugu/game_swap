class BookingsController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @game = Game.find(params[:game_id])
    @booking.user = current_user
    @booking.game = @game

    if @booking.save
      redirect_to dashboards_path
    else
      render "new"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
