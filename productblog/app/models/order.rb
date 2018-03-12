class Order < ApplicationRecord
	#has_one :address, through: => :users
	belongs_to :user

	belongs_to :address

	has_many :line_items
    #has_many :products, :through => :line_items

  #accepts_nested_attributes_for :line_items, :user , :address

  def user_attributes=(attrs)
    self.user = User.where(attrs).first_or_initialize(attrs) 
    @show_exists_message = !user.new_record?
  end


  def address_attributes=(attrs)
    self.address = Address.where(attrs).first_or_initialize(attrs) 
    @show_exists_message = !address.new_record?  
  end
end
