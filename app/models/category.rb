class Category < ActiveRecord::Base

	extend FriendlyId
		friendly_id :name, use: [:slugged, :finders]
		
	has_many :sub_categories
	has_many :child_sub_categories

	validates_presence_of :name
	validates_uniqueness_of :name

end
