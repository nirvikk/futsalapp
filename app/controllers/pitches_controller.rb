class PitchesController < ApplicationController
  before_action :find_ground

  def index
   @pitches = Pitch.where(grounddetail_id: @grounddetail.id)
  end


  def new
    @pitch = Pitch.new
  end

  def show
    @pitch = Pitch.find(params[:id])
  end

  def create
    @pitch = Pitch.new(pitch_params)
    @pitch.grounddetail_id = @grounddetail.id

    if @pitch.save
      redirect_to grounddetail_pitch_path(@grounddetail, @pitch)
    else
      render 'new'
    end
  end

  def destroy
    @pitch = Pitch.find(params[:id])
    @pitch.destroy
    redirect_to root_path
  end

  private

  def find_ground
    @grounddetail = Grounddetail.find(params[:grounddetail_id])
  end

  def pitch_params
    params.require(:pitch).permit(:pitchname, :image)
  end
  
end
