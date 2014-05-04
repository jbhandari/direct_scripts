class ChangeBirthDateFromStringToDate < ActiveRecord::Migration
  def change
    remove_column :patients, :birth_date
  end
end
