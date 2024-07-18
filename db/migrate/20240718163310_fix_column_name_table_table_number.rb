class FixColumnNameTableTableNumber < ActiveRecord::Migration[7.1]
  def self.up
    rename_column :tables, :table_number, :code
  end

  def self.down
    rename_column :tables, :code, :table_number
  end
end
