class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :bio, :text
    add_column :users, :batch_number, :string
    add_column :users, :github, :string
  end
end
