class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.references :admin, index: true, foreign_key: true
      t.string :response
      t.string :advert

      t.timestamps null: false
    end
  end
end
