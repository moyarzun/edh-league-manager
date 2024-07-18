class AddUniquenessConstraintToTableUsers < ActiveRecord::Migration[7.1]
  def change
    add_index :table_users, [:user_id, :table_id], unique: true
  end
end
