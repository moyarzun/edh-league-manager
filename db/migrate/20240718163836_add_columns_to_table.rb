class AddColumnsToTable < ActiveRecord::Migration[7.1]
  def change
    add_column :tables, :open, :boolean
  end
end
