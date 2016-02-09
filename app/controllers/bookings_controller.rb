class BookingsController < ApplicationController

  before_action :find_booking, only: [:show, :edit, :update, :destroy]
  before_action :find_ground
  before_action :find_pitch

  def index
    @bookings = Booking.where(pitch_id: @pitch.id)#.order(:start_time)
  end

  def new
    @booking = Booking.new
  end

  def show
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.grounddetail_id = @grounddetail.id
    @booking.pitch_id = @pitch.id

    if @booking.save
      redirect_to grounddetail_pitch_booking_path(@grounddetail, @pitch, @booking)
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private

  def find_ground
    @grounddetail = Grounddetail.find(params[:grounddetail_id])
  end

  def find_pitch
    @pitch = Pitch.find(params[:pitch_id])    
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :name, :address, :email, :start_time, :end_time, :contact_no, :length)
  end

end
