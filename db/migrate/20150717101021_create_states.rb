class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
    	t.string :s_type

    	t.integer  :city_id

      t.timestamps null: false
    end
  end
end
