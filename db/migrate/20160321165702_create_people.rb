class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :user_name
      t.string :user_id

      t.timestamps null: false
    end
  end
end
