class AddCurrencyValueToProperties < ActiveRecord::Migration
  def change
  	add_column :properties, :c_value, :string 
  end
end
