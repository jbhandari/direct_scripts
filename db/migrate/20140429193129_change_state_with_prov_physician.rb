class ChangeStateWithProvPhysician < ActiveRecord::Migration
  def change
    rename_column :physicians, :state, :state_prov
  end
end
