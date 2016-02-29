class Grounddetail < ActiveRecord::Base
  has_many :prices, dependent: :destroy
  has_many :bookings,  dependent: :destroy
  has_many :pitches, dependent: :destroy

  

  has_attached_file :image, styles: { medium: "500x400#", small: "350x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


end
