class CreatePayments < ActiveRecord::Migration[6.0]
  def up
    create_table :payments do |t|
      t.references :client, index:true, foreign_key: true
      t.references :subscription, index:true, foreign_key: true
      t.integer :type_payment
      t.datetime :date_payment

      t.timestamps
    end
  end
  
  def down
    drop_table :payments
  end
  
end
