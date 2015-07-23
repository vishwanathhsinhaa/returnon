class AddPropertyTypeToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :p_type, :string
  end
end
