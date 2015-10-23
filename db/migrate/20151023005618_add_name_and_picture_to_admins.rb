class AddNameAndPictureToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :name, :string
    add_column :admins, :image, :string
  end
end
