class AddFieldsToClinic < ActiveRecord::Migration
  def change
    add_column :clinics, :locality, :string
    add_column :clinics, :zip_postal, :string
    add_column :clinics, :state_prov, :string
    add_column :clinics, :country, :string
  end
end
