class PricesController < ApplicationController

  before_action :set_ground
  
  def index
    @prices = Price.where(grounddetail_id: @grounddetail.id).order("created_at DESC")
  end

  def new
    @price = Price.new
  end

  def create
    @price = Price.new(price_params)
    @price.grounddetail_id = @grounddetail.id
    if @price.save
      redirect_to grounddetail_prices_path(@grounddetail) 
    else 
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private 

  def set_ground
    @grounddetail = Grounddetail.find(params[:grounddetail_id])
  end

  def price_params
    params.require(:price).permit(:mprice, :aprice, :eprice, :wkprice)
  end

end
