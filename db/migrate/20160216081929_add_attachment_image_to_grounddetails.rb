class AddAttachmentImageToGrounddetails < ActiveRecord::Migration
  def self.up
    change_table :grounddetails do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :grounddetails, :image
  end
end
