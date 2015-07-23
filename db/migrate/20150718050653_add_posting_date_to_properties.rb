class AddPostingDateToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :p_date, :date
  end
end
