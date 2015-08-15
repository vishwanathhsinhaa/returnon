class RemoveCityIdFromSearches < ActiveRecord::Migration
  def change
  	remove_column :searches, :city_id, :integer  	
  end
end
