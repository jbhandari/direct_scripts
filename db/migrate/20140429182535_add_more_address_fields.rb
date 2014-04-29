class AddMoreAddressFields < ActiveRecord::Migration
  def change
    add_column :patients, :zip_postal, :string
    add_column :patients, :locality, :string
    add_column :patients, :state_prov, :string
    add_column :patients, :country, :string
  end
end
