class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.string :status
      t.string :author
      t.string :username
      t.integer :user_id
      t.string :user
      t.string :bio 
      t.string :website
      t.string :skype
      t.date :dob
      t.integer :age

      t.timestamps null: false
    end
  end
end
