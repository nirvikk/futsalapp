class AddPitchIdToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :pitch_id, :integer
  end
end
