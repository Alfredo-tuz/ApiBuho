class CreateServices < ActiveRecord::Migration[6.0]
  def up
    create_table :services do |t|
      t.string :name
      t.decimal :price, precision: 10, scale: 2
      t.references :subscription,index:true, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :services    
  end
  
end
