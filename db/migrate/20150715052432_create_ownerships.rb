class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.string :o_type

      t.timestamps null: false
    end
  end
end
