class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :mprice
      t.integer :aprice
      t.integer :eprice
      t.integer :wkprice
      t.references :grounddetail, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
