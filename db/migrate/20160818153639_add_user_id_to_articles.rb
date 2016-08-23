class AddUserIdToArticles < ActiveRecord::Migration
  def change
    add_reference :articles, :user_id, index: true, foreign_key: true
  end
end
