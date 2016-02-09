class Grounddetail < ActiveRecord::Base
  has_many :prices, dependent: :destroy
  has_many :bookings,  dependent: :destroy
  has_many :pitches, dependent: :destroy
end
