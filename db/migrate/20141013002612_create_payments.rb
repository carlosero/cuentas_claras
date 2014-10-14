class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :user, index: true
      t.references :group, index: true
      t.decimal :amount, null: false
      t.string :description

      t.timestamps
    end
  end
end
