class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :edit, :update, :destroy ]
  before_action :set_listing, only: [:new, :create, :edit ]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.listing = @listing
    @booking.user = current_user
    if @booking.save
      redirect_to listing_bookings_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to listing_bookings_path(@booking.listing.id)
  end

  def destroy
    @booking.destroy
    redirect_to listing_bookings_path(@booking.listing.id)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def booking_params
    params.require(:booking).permit(:startdate, :finishdate)
  end
end
