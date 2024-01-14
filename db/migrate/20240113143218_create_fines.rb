class CreateFines < ActiveRecord::Migration[6.1]
  def change
    create_table :fines do |t|
      t.text :reason
      t.string :place
      t.datetime :time_of_issue
      t.integer :amount
      t.string :payment_status
      t.integer :penalty_amount

      t.timestamps
    end
  end
end
