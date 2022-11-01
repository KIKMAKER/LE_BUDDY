class AddFieldsToChallenges < ActiveRecord::Migration[7.0]
  def change
    add_column :challenges, :availability, :string
  end
end
