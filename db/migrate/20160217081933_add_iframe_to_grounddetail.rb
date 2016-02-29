class AddIframeToGrounddetail < ActiveRecord::Migration
  def change
    add_column :grounddetails, :iframe, :string
  end
end
