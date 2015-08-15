class RemoveCategoryIdFromSearches < ActiveRecord::Migration
  def change
  	remove_column :searches, :category_id, :integer
  	add_column :searches, :properties_id, :integer
  end
end
