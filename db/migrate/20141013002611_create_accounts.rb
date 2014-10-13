class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.references :user, index: true
      t.string :bank
      t.string :account_type
      t.string :number

      t.timestamps
    end
  end
end
