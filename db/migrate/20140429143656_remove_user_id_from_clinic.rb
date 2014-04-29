class RemoveUserIdFromClinic < ActiveRecord::Migration
  def change
    remove_column :clinics, :user_id
    remove_column :patients, :user_id
    remove_column :physicians, :user_id
  end
end
