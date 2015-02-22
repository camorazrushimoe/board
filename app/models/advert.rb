class Advert < ActiveRecord::Base
	validates :price, numericality: true
	belongs_to :user
	belongs_to :category

	has_attached_file :img_url, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	#validates_attachment_content_type :img_url, content_type: %w(image/jpeg image/jpg image/png)
end
