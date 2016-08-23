class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :age
      t.string :twitter
      t.string :location

      t.timestamps null: false
    end
  end
end
