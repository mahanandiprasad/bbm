class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.text :description
      t.float :original_price
      t.float :discount_price
      t.float :weight
      t.integer :min_order
      t.integer :max_order
      t.boolean :tax_applied
      t.text :terms_condition

      t.timestamps null: false
    end
  end
end
