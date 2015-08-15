class AddNameToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :phone_number, :integer
  	add_column :users, :agent, :boolean
  	add_column :users, :owner, :boolean
  	
  end
end
