class Dog < ActiveRecord::Base
	validates_presence_of :name
	has_many :pets
	has_many :owners, through: :pets
end
