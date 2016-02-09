class Pitch < ActiveRecord::Base
  belongs_to :grounddetail
  has_many :bookings
end
