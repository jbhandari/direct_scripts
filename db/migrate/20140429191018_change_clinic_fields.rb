class ChangeClinicFields < ActiveRecord::Migration
  def change
    rename_column :clinics, :clinic_name, :name
    rename_column :clinics, :clinic_address, :address
    rename_column :clinics, :clinic_phone, :phone
  end
end
