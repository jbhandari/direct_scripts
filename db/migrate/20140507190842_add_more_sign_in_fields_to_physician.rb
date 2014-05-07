class AddMoreSignInFieldsToPhysician < ActiveRecord::Migration
  def change
    add_column :physicians, :clinic_name, :string
    add_column :physicians, :clinic_address, :string
    add_column :physicians, :clinic_locality, :string
    add_column :physicians, :clinic_state_prov, :string
    add_column :physicians, :clinic_zip_postal, :string
    add_column :physicians, :clinic_country, :string
  end
end
