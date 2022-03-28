class CreateIines < ActiveRecord::Migration[5.2]
  def change
    create_table :iines do |t|
      t.integer :user_id
      t.integer :photo_id
      t.timestamps
    end
  end
end
