class ChangeNameFields < ActiveRecord::Migration
  def change
    rename_column :patients, :first_name, :name
    remove_column :patients, :last_name
    remove_column :physicians, :last_name
    rename_column :physicians, :first_name, :name
  end
end
