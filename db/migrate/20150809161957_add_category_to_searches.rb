class AddCategoryToSearches < ActiveRecord::Migration
  def change
  	remove_column :searches, :property_id, :integer 
  	add_column :searches, :c_type, :string
  	add_column :searches, :ct_type, :string
  	add_column :searches, :min_price, :decimal
  	add_column :searches, :max_price, :decimal
  end
end
