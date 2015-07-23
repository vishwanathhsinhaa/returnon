class AddCategoryToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :c_type, :string
  end
end
