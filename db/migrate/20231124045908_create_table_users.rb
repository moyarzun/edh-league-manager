class CreateTableUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :table_users do |t|
      t.references :table, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
