class ChangePhysLicenseFromIntegerToString < ActiveRecord::Migration
  def change
    change_column :physicians, :license_number, :string
  end
end
