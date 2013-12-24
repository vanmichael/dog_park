class Owner < ActiveRecord::Base
	has_many :pets
	has_many :dogs, through: :pets

	validates_presence_of :first_name
	validates_presence_of :last_name
	validates_presence_of :email

	validates_uniqueness_of :email

	VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, format: { with: VALID_EMAIL }
end
