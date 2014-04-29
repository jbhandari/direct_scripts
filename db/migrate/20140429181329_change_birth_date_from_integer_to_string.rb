class ChangeBirthDateFromIntegerToString < ActiveRecord::Migration
  def change
    change_column :patients, :birth_date, :string
  end
end
