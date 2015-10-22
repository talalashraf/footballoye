class AddIndexToSlug < ActiveRecord::Migration
  def change
    add_index :clubs, :slug
  end
end
