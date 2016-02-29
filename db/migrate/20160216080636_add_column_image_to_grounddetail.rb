class AddColumnImageToGrounddetail < ActiveRecord::Migration
  def change
    add_column :grounddetails, :image, :string
  end
end
