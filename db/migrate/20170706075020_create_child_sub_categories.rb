class CreateChildSubCategories < ActiveRecord::Migration
  def change
    create_table :child_sub_categories do |t|
      t.string :name
      t.string :descriptions
      t.string :slug
      t.references :category, index: true, foreign_key: true
      t.references :subcategory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
