class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :u_type
      
      t.timestamps null: false
    end
  end
end
