class RemoveColumnImageToGrounddetail < ActiveRecord::Migration
  def change
    remove_column :grounddetails, :image, :string
    add_column :grounddetails, :image, :attachment
  end
end
