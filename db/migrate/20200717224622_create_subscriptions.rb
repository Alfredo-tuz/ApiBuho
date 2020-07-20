class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def up
    create_table :subscriptions do |t|
      t.string :name
      t.boolean :is_active
      t.integer :type_subscription
      t.timestamps
    end
  end

  def down
    drop_table :subscriptions
  end
end
