class RemoveEndTimeFromBooking < ActiveRecord::Migration
  def change
    remove_column :bookings, :end_time, :datetime
    add_column :bookings, :length, :integer
  end
end
