class AddPhoneToPharmacist < ActiveRecord::Migration
  def change
    add_column :pharmacists, :phone, :string
  end
end
