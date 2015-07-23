class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.string :lane1
    	t.string :lane2
    	
    	
      t.timestamps null: false
    end
  end
end
