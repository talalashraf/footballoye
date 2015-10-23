class AddOmniauthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_index :users, :provider
    add_column :users, :uid, :string
    add_index :users, :uid
    add_column :users, :full_name, :string
    add_column :users, :display_pic, :string
    add_column :users, :first_name, :string
    add_column :users, :hometown, :string
  end
end
