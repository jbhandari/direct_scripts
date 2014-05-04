class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.string :med
      t.string :dose
      t.text :directions
      t.integer :pill_count
      t.integer :refills
      t.timestamps
    end
  end
end
