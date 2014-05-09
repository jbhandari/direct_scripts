class AddsTokenColumnToScripts < ActiveRecord::Migration
  def change
    add_column :scripts, :token, :string, null: false
  end
end
