class CreateTables < ActiveRecord::Migration[7.1]
  def change
    create_table :tables do |t|
      t.integer :table_number

      t.timestamps
    end
  end
end
