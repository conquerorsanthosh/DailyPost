class AddUserIdToProfiles < ActiveRecord::Migration
  def change
    add_reference :profiles, :user_id, index: true, foreign_key: true
  end
end
