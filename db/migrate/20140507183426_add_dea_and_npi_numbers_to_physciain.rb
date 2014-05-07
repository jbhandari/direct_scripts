class AddDeaAndNpiNumbersToPhysciain < ActiveRecord::Migration
  def change
    add_column :physicians, :dea_id, :string
    add_column :physicians, :npi_id, :string
    add_column :physicians, :upin_id, :string
  end
end
