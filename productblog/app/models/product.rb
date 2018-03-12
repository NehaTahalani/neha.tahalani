class Product < ApplicationRecord

	validates :name, presence: true

	  mount_uploader :image, ImageUploader


	has_many :lineitems
	# has_many :orders, through: => :lineitems


	validates_processing_of :image
validate :image_size_validation
 
private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end




	belongs_to :category, required: false
	attr_accessor :new_category_name
	
	before_save :create_category_from_name

  def create_category_from_name
    create_category(name: new_category_name) unless new_category_name.blank?
  end
  

  def self.search(search)
  where("name LIKE ? OR sku LIKE ?", "%#{search}%", "%#{search}%") 
end


end
