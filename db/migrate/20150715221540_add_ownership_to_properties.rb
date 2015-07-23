class AddOwnershipToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :o_type, :string
  end
end
