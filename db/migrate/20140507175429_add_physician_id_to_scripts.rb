class AddPhysicianIdToScripts < ActiveRecord::Migration
  def change
    add_column :scripts, :physician_id, :integer
  end
end
