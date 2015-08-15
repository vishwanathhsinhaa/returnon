class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :area
      t.float :price
      t.integer :pin_code
      t.string :tenant_name
      t.date :lease_commence_date
      t.date :lease_expiry_date
      t.string :lease_tenure
      t.float :rent_per_month
      t.string :roi
      t.string :lockin_period
      t.string :currency
      t.date :posting_date
      t.string :yrs
      t.string :desc
      t.string :a_type
      t.string :o_type
      t.string :p_type
      t.string :u_type
      t.string :ct_type
      t.string :c_type
      t.string :s_type 
            
      t.timestamps null: false
    end
  end
end
