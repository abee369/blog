class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :location
      t.string :food

      t.timestamps null: false
    end
  end
end
