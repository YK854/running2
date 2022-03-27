class CreateComs < ActiveRecord::Migration[5.2]
  def change
    create_table :coms do |t|
      t.string :com
      t.integer :user_id
      t.integer :photo_id
      t.timestamps
    end
  end
end
