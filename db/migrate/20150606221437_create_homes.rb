class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :title
      t.string :text
      t.string :photo_uid
      t.string :photo_name
      t.string :image_uid
      t.string :image_name
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
