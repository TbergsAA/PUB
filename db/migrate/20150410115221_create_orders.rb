class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.boolean :completed
      t.timestamps null: false
    end
  end
end
