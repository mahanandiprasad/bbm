class ProductCategorization < ActiveRecord::Base
  belongs_to :product
  belongs_to :category
  belongs_to :subcategory
  belongs_to :childsubcategory
end
