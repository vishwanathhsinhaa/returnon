class AddPinCodeToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :p_code, :string
  end
end
