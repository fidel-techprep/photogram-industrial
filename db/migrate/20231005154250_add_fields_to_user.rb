class AddFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :image_url, :string
    add_column :users, :private_profile, :boolean
    add_column :users, :bio, :text
    add_column :users, :name, :string
    add_column :users, :website_url, :string
  end
end
