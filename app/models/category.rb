class Category < ActiveRecord::Base
	has_many :advert, dependent: :destroy
end
