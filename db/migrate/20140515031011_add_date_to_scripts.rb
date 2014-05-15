class AddDateToScripts < ActiveRecord::Migration
  def change
    add_column :scripts, :date, :date
  end
end
