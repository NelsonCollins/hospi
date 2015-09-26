class CreateRegNos < ActiveRecord::Migration
  def change
    create_table :reg_nos do |t|
      t.string :number

      t.timestamps null: false
    end
  end
end
