class AddHospitalRegNoToUser < ActiveRecord::Migration
  def change
    add_column :users, :hospital_reg_no, :string
  end
end
