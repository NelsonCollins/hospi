class AddBirthIdToRegNos < ActiveRecord::Migration
  def change
    add_column :reg_nos, :birth_id, :integer
  end
end
