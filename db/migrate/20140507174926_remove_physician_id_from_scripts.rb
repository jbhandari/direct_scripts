class RemovePhysicianIdFromScripts < ActiveRecord::Migration
  def change
    remove_column :scripts, :physician_id
  end
end
