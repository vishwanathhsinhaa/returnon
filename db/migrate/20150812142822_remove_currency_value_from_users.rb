class RemoveCurrencyValueFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :c_value, :string
  end
end
