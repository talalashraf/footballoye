class RemoveClubFromAdmin < ActiveRecord::Migration
  def change
    remove_column :admins, :club, :string
  end
end
