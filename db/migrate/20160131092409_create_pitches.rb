class CreatePitches < ActiveRecord::Migration
  def change
    create_table :pitches do |t|
      t.references :grounddetail, index: true, foreign_key: true
      t.references :booking, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
