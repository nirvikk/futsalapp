class GrounddetailsController < ApplicationController

  before_action :find_ground, only: [:show, :edit, :destroy, :update]
  
  def index
    @grounddetails = Grounddetail.all.order('created_at DESC')
  end

  def new
    @grounddetail = Grounddetail.new
  end

  def edit
  end

  def show
   
  end 

  def create
    @grounddetail = Grounddetail.new(ground_params)
    if @grounddetail.save
      redirect_to @grounddetail
    else
      render 'new'
    end
  end

  def update
    if @grounddetail.update(ground_params)
      redirect_to @grounddetail
    else
      render 'edit'
    end
  end

  def destroy
    @grounddetail.destroy
    redirect_to root_path
  end


  private

  def find_ground
    @grounddetail = Grounddetail.find(params[:id])
  end

  def ground_params
    params.require(:grounddetail).permit(:name, :working_hours, :end_time, :address, :contact_no, :email, :number_of_grounds, :description, :featured_ground)
  end

end
