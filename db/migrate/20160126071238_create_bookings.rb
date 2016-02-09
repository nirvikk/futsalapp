class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.string :name
      t.string :address
      t.string :email
      t.integer :contact_no, limit: 10
      t.datetime :start_time
      t.datetime :end_time
      t.references :grounddetail, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
