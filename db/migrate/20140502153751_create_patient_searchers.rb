class CreatePatientSearchers < ActiveRecord::Migration
  def change
    create_table :patient_searchers do |t|

      t.timestamps
    end
  end
end
