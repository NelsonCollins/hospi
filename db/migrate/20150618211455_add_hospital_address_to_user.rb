class AddHospitalAddressToUser < ActiveRecord::Migration
  def change
    add_column :users, :hospital_address, :string
  end
end
