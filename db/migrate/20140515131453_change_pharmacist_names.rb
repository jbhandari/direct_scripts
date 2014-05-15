class ChangePharmacistNames < ActiveRecord::Migration
  def change
    remove_column :pharmacists, :last_name
    rename_column :pharmacists, :first_name, :name
  end
end
