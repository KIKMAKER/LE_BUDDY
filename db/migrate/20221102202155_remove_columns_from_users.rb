class RemoveColumnsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :name, :string
    remove_column :users, :latitude, :float
    remove_column :users, :longitude, :float
  end
end
