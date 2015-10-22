class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :nickname
      t.string :league
      t.text :info
      t.integer :followers

      t.timestamps null: false
    end
  end
end
