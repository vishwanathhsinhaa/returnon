class AddDescriptionToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :desc, :string
  end
end
