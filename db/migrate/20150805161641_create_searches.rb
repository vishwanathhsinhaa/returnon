class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.integer :category_id
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
