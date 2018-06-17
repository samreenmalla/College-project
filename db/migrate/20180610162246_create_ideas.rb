class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.text :description
      t.integer :user_id
      t.timestamps null: false
    end
    add_index :ideas, :user_id
  end
end

