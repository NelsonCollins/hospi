class CreateBirths < ActiveRecord::Migration
  def change
    create_table :births do |t|
      t.string :childname
      t.string :fathername
      t.string :mothername
      t.string :bloodgroup
      t.string :genotype
      t.string :sorigin
      t.string :sex
      t.string :date
      t.string :time
      t.string :lga
      t.string :sbirth
      t.string :nationality
      t.string :raddress
      t.string :occupation
      t.string :nmidwife
      t.string :mage
      t.string :fage
      t.string :weight
      t.string :dreg
      t.string :time
      t.string :reg_num

      t.timestamps null: false
      UNIQUE  (childname, fathername, birth);
    end
  end
end
