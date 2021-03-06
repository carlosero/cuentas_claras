class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.references :user, index: true
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
