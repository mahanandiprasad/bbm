class Product < ActiveRecord::Base
	has_many :specifications
	has_many :variations
end
