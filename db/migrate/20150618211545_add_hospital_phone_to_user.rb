class AddHospitalPhoneToUser < ActiveRecord::Migration
  def change
    add_column :users, :hospital_phone, :string
  end
end
