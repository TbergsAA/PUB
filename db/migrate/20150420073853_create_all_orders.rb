class CreateAllOrders < ActiveRecord::Migration
  def change
    create_table :all_orders do |t|
      t.integer :order_id
      t.string :products
      t.timestamps null: false
    end
  end
end
