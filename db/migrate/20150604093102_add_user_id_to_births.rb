class AddUserIdToBirths < ActiveRecord::Migration
  def change
    add_column :births, :user_id, :integer
  end
end
