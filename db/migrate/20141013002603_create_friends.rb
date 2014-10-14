class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :from, index: true
      t.integer :to, index: true

      t.timestamps
    end
  end
end
