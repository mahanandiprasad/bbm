class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.string :name
      t.string :description
      t.string :slug
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end