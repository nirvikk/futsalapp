class AddEndTimeToGrounddetails < ActiveRecord::Migration
  def change
    add_column :grounddetails, :end_time, :datetime
  end
end
