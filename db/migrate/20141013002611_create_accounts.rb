class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.references :user, index: true
      t.string :bank, null: false
      t.string :account_type, null: false
      t.string :number, null: false

      t.timestamps
    end
  end
end
