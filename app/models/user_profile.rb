class UserProfile < ActiveRecord::Base
  belongs_to :user
  belongs_to :address
  belongs_to :contactdetail
end
