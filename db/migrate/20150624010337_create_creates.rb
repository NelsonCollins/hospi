class CreateCreates < ActiveRecord::Migration
  def change
    create_table :creates do |t|
      t.string :index
      t.string :show
      t.string :new

      t.timestamps null: false
    end
  end
end
