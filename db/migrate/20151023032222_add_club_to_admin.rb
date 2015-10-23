class AddClubToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :club, :integer
  end
end
