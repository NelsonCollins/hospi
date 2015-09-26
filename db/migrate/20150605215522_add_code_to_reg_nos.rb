class AddCodeToRegNos < ActiveRecord::Migration
  def change
    add_column :reg_nos, :code, :string
  end
end
