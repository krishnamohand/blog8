class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :products_name
      t.integer :date
      t.integer :customer_id

      t.timestamps
    end
  end
end











