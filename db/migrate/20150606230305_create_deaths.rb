class CreateDeaths < ActiveRecord::Migration
  def change
    create_table :deaths do |t|
      t.string :rdate
      t.string :dname
      t.string :sex
      t.string :color
      t.string :age
      t.string :occupation
      t.string :mstatus
      t.string :nationality
      t.string :birthplace
      t.string :cdate
      t.string :place
      t.string :cdeath
      t.string :nextkin
      t.string :doctor
      t.string :cleared
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
