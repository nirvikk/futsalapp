class CreateGrounddetails < ActiveRecord::Migration
  def change
    create_table :grounddetails do |t|
      t.string :name
      t.datetime :working_hours
      t.string :address
      t.string :contact_no
      t.string :email
      t.integer :number_of_grounds
      t.text :description

      t.timestamps null: false
    end
  end
end
