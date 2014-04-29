class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :clinic_name
      t.text :clinic_address
      t.string :clinic_phone
      t.integer :user_id
      t.timestamps
    end
  end
end
