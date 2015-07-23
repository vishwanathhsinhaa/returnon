class AddTypeToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :u_type, :string
  end
end
