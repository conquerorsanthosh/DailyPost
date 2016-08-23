class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :contents
      t.string :comments
      t.string :location

      t.timestamps null: false
    end
  end
end
