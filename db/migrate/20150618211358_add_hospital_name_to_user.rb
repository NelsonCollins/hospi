class AddHospitalNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :hospital_name, :string
  end
end
