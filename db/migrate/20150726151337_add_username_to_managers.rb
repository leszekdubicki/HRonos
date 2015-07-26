class AddUsernameToManagers < ActiveRecord::Migration
  def change
    add_column :managers, :username, :string
    add_index :managers, :username, unique: true
  end
end
