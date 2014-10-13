class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.references :payment, index: true
      t.references :user, index: true
      t.decimal :amount
      t.boolean :paid
      t.datetime :paid_date

      t.timestamps
    end
  end
end
