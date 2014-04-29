class ChangeAgeToBirthDate < ActiveRecord::Migration
  def change
    rename_column :patients, :age, :birth_date
  end
end
