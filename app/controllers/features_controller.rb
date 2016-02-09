class FeaturesController < ApplicationController

  def index
    @grounddetails = Grounddetail.where(featured_ground: true).order("created_at DESC")
  end
end
