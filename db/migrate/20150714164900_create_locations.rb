class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
    	t.string :state
    	t.string :city
    	t.float :latitude
    	t.float :longitude
    	t.integer :zip_code

      t.timestamps null: false
    end
  end
end
