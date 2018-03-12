class User < ApplicationRecord

	#attr_accessor :address_attributes
	has_many :addresses, :dependent => :destroy
	has_many :orders
	accepts_nested_attributes_for :addresses, allow_destroy: true

	has_many :orders
end
