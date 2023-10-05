class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :photo_id, null: false, foreign_key: { to_table: :photos }
      t.references :user_id, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
