class AddFeaturedGroundToGrounddetails < ActiveRecord::Migration
  def change
    add_column :grounddetails, :featured_ground, :boolean
  end
end
