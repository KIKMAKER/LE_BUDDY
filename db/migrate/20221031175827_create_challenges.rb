class CreateChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :duration
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
