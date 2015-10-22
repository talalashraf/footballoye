class AddSlugToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :slug, :string
  end
end
