class CreatePaymentHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :payment_histories do |t|
      t.references :payment, index:true, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
