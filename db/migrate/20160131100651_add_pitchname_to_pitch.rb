class AddPitchnameToPitch < ActiveRecord::Migration
  def change
    add_column :pitches, :pitchname, :string
  end
end
