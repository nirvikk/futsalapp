"require_relative './concern/bookable"

class Booking < ActiveRecord::Base
  belongs_to :grounddetail
  belongs_to :pitch

  include Bookable
end
