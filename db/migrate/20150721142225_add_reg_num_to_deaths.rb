class AddRegNumToDeaths < ActiveRecord::Migration
  def change
    add_column :deaths, :reg_num, :string
  end
end
