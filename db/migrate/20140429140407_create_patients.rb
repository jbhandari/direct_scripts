class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :age
      t.text :address
      t.string :phone_number
      t.text :insurance_provider
      t.string :policy_number
      t.timestamps
    end
  end
end
