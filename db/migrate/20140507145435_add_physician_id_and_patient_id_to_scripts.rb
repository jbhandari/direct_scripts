class AddPhysicianIdAndPatientIdToScripts < ActiveRecord::Migration
  def change
    add_column :scripts, :patient_id, :integer
    add_column :scripts, :physician_id, :integer
  end
end
