class ChangePharmacyAddress < ActiveRecord::Migration
  def change
    rename_column :pharmacists, :pharamcy_address, :pharmacy_address 
  end
end
