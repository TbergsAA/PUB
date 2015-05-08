class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.boolean :completed, default: false
      t.timestamps null: false
    end
  end
end
