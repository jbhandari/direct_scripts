class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :state
      t.string :gender
      t.string :specialty
      t.integer :license_number
      t.integer :user_id
      t.timestamps
    end
  end
end
