class AddColumnImageToPitch < ActiveRecord::Migration
  def change
    add_column :pitches, :image, :attachment
  end
end
