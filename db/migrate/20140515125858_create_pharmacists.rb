class CreatePharmacists < ActiveRecord::Migration
  def change
    create_table :pharmacists do |t|
      t.string :first_name
      t.string :last_name
      t.string :college
      t.string :license_id
      t.string :pharmacy_name
      t.string :pharamcy_address
      t.string :locality
      t.string :state_prov
      t.string :country
      t.string :zip_postal
      t.timestamps
    end 
  end
end
