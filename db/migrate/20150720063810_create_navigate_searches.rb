class CreateNavigateSearches < ActiveRecord::Migration
  def change
    create_table :navigate_searches do |t|

      t.timestamps null: false
    end
  end
end
