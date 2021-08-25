class BookingsController < ApplicationController

  before_action :set_booking, :only [:show]

  def index
    @bookings = Booking.all
  end

  def show
  end

  private

  def set_booking
    @booking = booking.find(params[:id])
  end
end
