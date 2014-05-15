class AddMedSchoolTo < ActiveRecord::Migration
  def change
    add_column :physicians, :med_school, :string
    add_column :physicians, :medical_board, :string 
    drop_table :clinics
  end
end
