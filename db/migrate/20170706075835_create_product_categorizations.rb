class CreateProductCategorizations < ActiveRecord::Migration
  def change
    create_table :product_categorizations do |t|
      t.references :product, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.references :subcategory, index: true, foreign_key: true
      t.references :childsubcategory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
