class ChildSubCategory < ActiveRecord::Base
  belongs_to :category
  belongs_to :subcategory

  validates_presence_of :name, :category_id, :subcategory_id
  validates_uniqueness_of :name
end
