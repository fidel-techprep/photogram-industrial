class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :photo_id, null: false, foreign_key: { to_table: :photos}
      t.references :user_id, null: false, foreign_key: true, {to_table: :users}
      t.text :body

      t.timestamps
    end
  end
end
