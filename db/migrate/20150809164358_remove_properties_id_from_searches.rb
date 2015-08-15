class RemovePropertiesIdFromSearches < ActiveRecord::Migration
  def change
  	remove_column :searches, :properties_id, :integer 
  end
end
