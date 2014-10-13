class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.references :debt, index: true
      t.decimal :amount

      t.timestamps
    end
  end
end
