class CreateConversations < ActiveRecord::Migration[7.0]
  def change
    create_table :conversations do |t|
      t.string :name
      t.references :challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
