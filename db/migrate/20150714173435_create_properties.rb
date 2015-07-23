class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :area
      t.string :price
      t.string :tenant_name
      t.date :lease_commence_date
      t.date :lease_expiry_date
      t.string :lease_tenure
      t.string :rent_per_month
      t.string :roi
      t.string :lockin_period
      

      t.integer  :category_id
      t.integer  :property_type_id
      t.integer  :ownership_id
      t.integer  :type_id
      t.integer :state_id
      t.integer :city_id
            
      t.timestamps null: false
    end
  end
end
