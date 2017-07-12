class SubCategory < ActiveRecord::Base
	
   extend FriendlyId
		friendly_id :name, use: [:slugged, :finders]

  belongs_to :category
  has_many :child_sub_categories

  validates_presence_of :name, :category_id
  validates_uniqueness_of :name

end
