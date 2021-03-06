class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :item_id
      t.integer :amount
      t.string :kind
      t.string :note
      t.datetime :date
      t.timestamps
    end
  end
end
